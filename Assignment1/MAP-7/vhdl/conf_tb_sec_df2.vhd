-------------------------------------------------------------------------------
-- File         : conf_tb_sec_df2.vhd
-- Description  : configuration for the simulation of sec_df2
-- Author       : Sabih Gerez, University of Twente
-- Creation date: March 20, 2019
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Mon Feb 20 23:36:12 CET 2023$
-- $Log$
-------------------------------------------------------------------------------


configuration conf_tb_sec_df2 of tb_sec_top is
  for top 
    for tg: tb_sec use entity work.tb_sec(structure)
            generic map (word_length => 8);
      for structure
        for duv: sec use entity work.sec_df2_std(rtl);
        end for;
        for tvc: tvc_sec use entity work.tvc_sec(file_io)
            generic map (clocks_per_sample => 1,
                         in_file_name => "sec_in_vhdl.dat",
                         out_file_name => "sec_df2_out_vhdl.dat");
        end for;
      end for;
    end for;
  end for;
end conf_tb_sec_df2;

