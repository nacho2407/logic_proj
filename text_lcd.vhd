library ieee;
use ieee.std_logic_1164.all;

entity text_lcd is
    port(
        clk      : in  std_logic;  -- 1kHz Clock
        rst      : in  std_logic;
		  st_name  : in  std_logic_vector(127 downto 0);
        vfd_e    : out std_logic;
        vfd_rs   : out std_logic;
        vfd_rw   : out std_logic;
        vfd_data : out std_logic_vector(7 downto 0)
    );
end text_lcd;

architecture hb of text_lcd is
    type state is (delay, function_set, entry_mode, disp_onoff, line1, line2, delay_t, clear_disp);
    signal vfd_state : state := delay;
    signal cnt       : integer range 0 to 4095 := 0;
    signal fun_cnt   : integer range 0 to 1 := 0;
    signal vfd_fun   : std_logic_vector(7 downto 0);

begin
    -- 상태 전환을 위한 프로세스
    process(rst, clk)
    begin
        if rst = '1' then
            vfd_state <= delay;
            cnt <= 0;
        elsif rising_edge(clk) then
            case vfd_state is
                when delay =>
                    if cnt = 70 then
                        vfd_state <= function_set;
                        cnt <= 0;
                    else
                        cnt <= cnt + 1;
                    end if;
                when function_set =>
                    if cnt = 30 then
                        vfd_state <= disp_onoff;
                        cnt <= 0;
                    else
                        cnt <= cnt + 1;
                    end if;
                when disp_onoff =>
                    if cnt = 30 then
                        vfd_state <= entry_mode;
                        cnt <= 0;
                    else
                        cnt <= cnt + 1;
                    end if;
                when entry_mode =>
                    if cnt = 30 then
                        vfd_state <= line1;
                        cnt <= 0;
                    else
                        cnt <= cnt + 1;
                    end if;
                when line1 =>
                    if cnt = 20 then
                        vfd_state <= line2;
                        cnt <= 0;
                    else
                        cnt <= cnt + 1;
                    end if;
                when line2 =>
                    if cnt = 20 then
                        vfd_state <= delay_t;
                        cnt <= 0;
                    else
                        cnt <= cnt + 1;
                    end if;
                when delay_t =>
                    if cnt = 4000 then
                        vfd_state <= delay_t;
                        cnt <= 0;
                    else
                        cnt <= cnt + 1;
                    end if;
                when clear_disp =>
                    if cnt = 1000 then
                        vfd_state <= function_set;
                        cnt <= 0;
                    else
                        cnt <= cnt + 1;
                    end if;
                when others =>
                    null;
            end case;
        end if;
    end process;

    -- 데이터 전송 프로세스
    process(rst, clk)
    begin
        if rst = '1' then
            vfd_rs <= '0';
            vfd_rw <= '0';
            vfd_data <= (others => '0');
        elsif rising_edge(clk) then
            case vfd_state is
                when function_set =>
                    vfd_rs <= '0';
                    vfd_rw <= '0';
                    vfd_data <= vfd_fun;
                    fun_cnt <= (fun_cnt + 1) mod 2;
                when disp_onoff =>
                    vfd_rs <= '0';
                    vfd_rw <= '0';
                    vfd_data <= "00001100";
                when entry_mode =>
                    vfd_rs <= '0';
                    vfd_rw <= '0';
                    vfd_data <= "00000110";
                when clear_disp =>
                    vfd_rs <= '0';
                    vfd_rw <= '0';
                    vfd_data <= "00000001";
                when delay_t =>
                    vfd_rs <= '0';
                    vfd_rw <= '0';
                    vfd_data <= "00000010";
                -- 첫 번째 라인 출력
                when line1 =>
                    vfd_rw <= '0';
                    case cnt is
								when 0  => vfd_rs <= '0'; vfd_data <= "10000000";
                        when 1  => vfd_rs <= '1'; vfd_data <= "01010100"; -- T
                        when 2  => vfd_rs <= '1'; vfd_data <= "01101000"; -- h
                        when 3  => vfd_rs <= '1'; vfd_data <= "01101001"; -- i
                        when 4  => vfd_rs <= '1'; vfd_data <= "01110011"; -- s
                        when 5  => vfd_rs <= '1'; vfd_data <= "00100000"; --  
                        when 6  => vfd_rs <= '1'; vfd_data <= "01110011"; -- S
                        when 7  => vfd_rs <= '1'; vfd_data <= "01110100"; -- t
                        when 8  => vfd_rs <= '1'; vfd_data <= "01101111"; -- o
                        when 9  => vfd_rs <= '1'; vfd_data <= "01110000"; -- p
                        when 10 => vfd_rs <= '1'; vfd_data <= "00100000"; --  
                        when 11 => vfd_rs <= '1'; vfd_data <= "01101001"; -- i
                        when 12 => vfd_rs <= '1'; vfd_data <= "01110011"; -- s
                        when 13 => vfd_rs <= '1'; vfd_data <= "00100000"; -- 
                        when 14 => vfd_rs <= '1'; vfd_data <= "00100000"; --
                        when 15 => vfd_rs <= '1'; vfd_data <= "00100000"; --
                        when 16 => vfd_rs <= '1'; vfd_data <= "00100000"; --
                        when others => null;
                    end case;
                -- 두 번째 라인 출력
                when line2 =>
						 vfd_rw <= '0';
						 case cnt is
							  when 0  => vfd_rs <= '0'; vfd_data <= "11000000"; -- Line Shift
							  when 1  => vfd_rs <= '1'; vfd_data <= st_name(127 downto 120);
							  when 2  => vfd_rs <= '1'; vfd_data <= st_name(119 downto 112);
							  when 3  => vfd_rs <= '1'; vfd_data <= st_name(111 downto 104);
							  when 4  => vfd_rs <= '1'; vfd_data <= st_name(103 downto 96);
							  when 5  => vfd_rs <= '1'; vfd_data <= st_name(95  downto 88);
							  when 6  => vfd_rs <= '1'; vfd_data <= st_name(87  downto 80);
							  when 7  => vfd_rs <= '1'; vfd_data <= st_name(79  downto 72);
							  when 8  => vfd_rs <= '1'; vfd_data <= st_name(71  downto 64);
							  when 9  => vfd_rs <= '1'; vfd_data <= st_name(63  downto 56);
							  when 10 => vfd_rs <= '1'; vfd_data <= st_name(55  downto 48);
							  when 11 => vfd_rs <= '1'; vfd_data <= st_name(47  downto 40);
							  when 12 => vfd_rs <= '1'; vfd_data <= st_name(39  downto 32);
							  when 13 => vfd_rs <= '1'; vfd_data <= st_name(31  downto 24);
							  when 14 => vfd_rs <= '1'; vfd_data <= st_name(23  downto 16);
							  when 15 => vfd_rs <= '1'; vfd_data <= st_name(15  downto 8);
							  when 16 => vfd_rs <= '1'; vfd_data <= st_name(7   downto 0);
							  when others => null;
						 end case;
                when others =>
                    null;
            end case;
        end if;
    end process;

    -- VFD 밝기 조절
    process(clk)
    begin
        if rising_edge(clk) then
            case fun_cnt is
                when 0 => vfd_fun <= "00111100";
                when 1 => vfd_fun <= "00111111";
                when others => vfd_fun <= "00111100";
            end case;
        end if;
    end process; 

    -- 클럭에 따라 vfd_e 출력
    vfd_e <= clk when rst = '0' else '0';
end hb;
