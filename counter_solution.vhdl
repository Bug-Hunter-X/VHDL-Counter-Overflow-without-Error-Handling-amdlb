```vhdl
entity counter is
  Port ( clk : in  STD_LOGIC;
                reset : in  STD_LOGIC;
                count : out  INTEGER range 0 to 15;
                overflow : out STD_LOGIC);
end entity;

architecture behavioral of counter is
  signal internal_count : INTEGER range 0 to 15 := 0;
begin
  process (clk, reset)
  begin
    if reset = '1' then
      internal_count <= 0;
      overflow <= '0';
    elsif rising_edge(clk) then
      if internal_count = 15 then
        overflow <= '1';
      else
        internal_count <= internal_count + 1;
        overflow <= '0';
      end if;
    end if;
  end process;
  count <= internal_count;
end architecture;
```