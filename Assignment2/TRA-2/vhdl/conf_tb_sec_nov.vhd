-------------------------------------------------------------------------------
-- File         : conf_tb_sec_nov.vhd
-- Description  : configuration for the simulation of sec_nov
-- Author       : Sabih Gerez, University of Twente
-- Creation date: March 17, 2019
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Mon Feb 20 23:36:12 CET 2023$
-- $Log$
-------------------------------------------------------------------------------


configuration conf_tb_sec_nov of tb_sec_top is
  for top 
    for tg: tb_sec use entity work.tb_sec(structure)
            generic map (word_length => 8);
      for structure
        for duv: sec use entity work.sec_nov_std(rtl);
        end for;
        for tvc: tvc_sec use entity work.tvc_sec(file_io)
            generic map (clocks_per_sample => 11,
                         in_file_name => "sec_in_vhdl.dat",
                         out_file_name => "sec_nov_out_vhdl.dat");
        end for;
      end for;
    end for;
  end for;
end conf_tb_sec_nov;

