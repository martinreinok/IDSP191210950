-------------------------------------------------------------------------------
-- (C) Bibix
-- The content below includes confidential, proprietary information of
-- Bibix. All use, disclosure, and/or reproduction is prohibited
-- unless authorized in writing. All rights reserved.
-------------------------------------------------------------------------------
-- File         : arx_numeric.vhd
-- Description  : numeric functions for Arx
-- Author       : Klaas Hofstra, University of Twente
-- Creation date: February 10, 2010 (header added by SHG)
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Sun Mar 19 22:36:35 CET 2023$
-- $Log$
-------------------------------------------------------------------------------


-- * 2006-08-28
-- Every function now has an explicit output type.
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package arx_numeric is

-- Utility functions

    function arx_min(
        input1, input2: signed
    ) return signed;

    function arx_min(
        input1, input2: unsigned
    ) return unsigned;

    function arx_max(
        input1, input2: signed
    ) return signed;

    function arx_max(
        input1, input2: unsigned
    ) return unsigned;
    
    function arx_abs(
        input: signed
    ) return unsigned;

    function arx_abs(
        input: unsigned
    ) return unsigned;

-- Extend functions

    function arx_msb_extend(
        input: signed;
        constant nr_bits: natural
    ) return signed;

    function arx_msb_extend(
        input: unsigned;
        constant nr_bits: natural
    ) return unsigned;

    function arx_lsb_extend(
        input: signed;
        constant nr_bits: natural
    ) return signed;

    function arx_lsb_extend(
        input: unsigned;
        constant nr_bits: natural
    ) return unsigned;

-- Overflow functions

    function arx_wrap(
        input: unsigned;
        constant nr_bits: natural
    ) return unsigned;

    function arx_wrap(
        input: signed;
        constant nr_bits: natural
    ) return signed;

    function arx_saturate(
        input: unsigned;
        constant nr_bits: natural
    ) return unsigned;

    function arx_saturate(
        input: signed;
        constant nr_bits: natural
    ) return signed;

    function arx_saturate_sym(
        input: signed;
        constant nr_bits: natural
    ) return signed;

-- Quantization functions

    function arx_truncate(
        input: unsigned;
        constant nr_bits: natural
    ) return unsigned;

    function arx_truncate(
        input: signed;
        constant nr_bits: natural
    ) return signed;

    function arx_round(
        input: unsigned;
        constant nr_bits: natural
    ) return unsigned;

    function arx_round(
        input: signed;
        constant nr_bits: natural
    ) return signed;

    function arx_round_zero(
        input: unsigned;
        constant nr_bits: natural
    ) return unsigned;

    function arx_round_zero(
        input: signed;
        constant nr_bits: natural
    ) return signed;

    function arx_round_inf(
        input: unsigned;
        constant nr_bits: natural
    ) return unsigned;

    function arx_round_inf(
        input: signed;
        constant nr_bits: natural
    ) return signed;

end;

package body arx_numeric is

-- Utility functions

    function arx_min(
        input1, input2: signed
    ) return signed is
    begin
        if input1 < input2 then
            return input1;
        else
            return input2;
        end if;
    end;

    function arx_min(
        input1, input2: unsigned
    ) return unsigned is
    begin
        if input1 < input2 then
            return input1;
        else
            return input2;
        end if;
    end;

    function arx_max(
        input1, input2: signed
    ) return signed is
    begin
        if input1 > input2 then
            return input1;
        else
            return input2;
        end if;
    end;

    function arx_max(
        input1, input2: unsigned
    ) return unsigned is
    begin
        if input1 > input2 then
            return input1;
        else
            return input2;
        end if;
    end;
    
    function arx_abs(
        input: signed
    ) return unsigned is
        constant left: natural := input'high;
        constant right: natural := input'low;
        variable temp: signed(left-right downto 0);
    begin
    	if input(input'high) = '1' then
	    temp := -input;
	else
	    temp := input;
	end if;
	return unsigned(temp);
    end;

    function arx_abs(
        input: unsigned
    ) return unsigned is
    begin
    	return input;
    end;

-- Extend functions

    function arx_msb_extend(
        input: signed;
        constant nr_bits: natural
    ) return signed is
    	constant out_left: natural := input'high + nr_bits - input'low;
        variable output: signed(out_left downto 0);
    begin
    	output(out_left-nr_bits downto 0) := input;
	output(out_left downto out_left-nr_bits+1) := 
          (others => input(input'high));
        return output;
    end;

    function arx_msb_extend(
        input: unsigned;
        constant nr_bits: natural
    ) return unsigned is
    	constant out_left: natural := input'high + nr_bits - input'low;
        variable output: unsigned(out_left downto 0);
    begin
    	output(out_left-nr_bits downto 0) := input;
	output(out_left downto out_left-nr_bits+1) := (others => '0');
        return output;
    end;

    function arx_lsb_extend(
        input: signed;
        constant nr_bits: natural
    ) return signed is
    	constant out_left: natural := input'high + nr_bits - input'low;
        variable output: signed(out_left downto 0);
    begin
    	output(out_left downto nr_bits) := input;
	output(nr_bits-1 downto 0) := (others => '0');
        return output;
    end;

    function arx_lsb_extend(
        input: unsigned;
        constant nr_bits: natural
    ) return unsigned is
    	constant out_left: natural := input'high + nr_bits - input'low;
        variable output: unsigned(out_left downto 0);
    begin
    	output(out_left downto nr_bits) := input;
	output(nr_bits-1 downto 0) := (others => '0');
        return output;
    end;

-- Overflow functions

    function arx_wrap(
        input: unsigned;
        constant nr_bits: natural
    ) return unsigned is
        constant left: natural := input'high - nr_bits;
        constant right: natural := input'low;
        variable output: unsigned(left-right downto 0);
    begin
        output := input(left downto right);
        return output;
    end;

    function arx_wrap(
        input: signed;
        constant nr_bits: natural
    ) return signed is
        constant left: natural := input'high - nr_bits;
        constant right: natural := input'low;
        variable output: signed(left-right downto 0);
    begin
        output := input(left downto right);
        return output;
    end;

    function arx_saturate(
        input: unsigned;
        constant nr_bits: natural
    ) return unsigned is
        constant left: natural := input'high - nr_bits;
        constant right: natural := input'low;
        variable left_bits: unsigned(nr_bits-1 downto 0);
        variable output: unsigned(left-right downto 0);
    begin
        left_bits := input(input'high downto input'high - nr_bits + 1);
        if left_bits = (nr_bits-1 downto 0 => '0') then
            output := input(left downto right);
        else
            output := (others => '1'); 
        end if;
	return output;
    end;

    -- SHG:
    -- saturate signed: requires inspection of one bit more than nr_bits
    function arx_saturate(
        input: signed;
        constant nr_bits: natural
    ) return signed is
        constant left: natural := input'high - nr_bits;
        constant right: natural := input'low;
        variable left_bits: signed(nr_bits downto 0);
        variable sign: std_logic;
        variable output: signed(left-right downto 0);
    begin
        left_bits := input(input'high downto left);
        if left_bits = (nr_bits downto 0 => '0') or 
           left_bits = (nr_bits downto 0 => '1') 
        then
           output := input(left downto right);
        else
           sign := input(input'high);
           output := (others => not sign);
           output(output'high) := sign;
        end if;
        return output;
    end;

    function arx_saturate_sym(
        input: signed;
        constant nr_bits: natural
    ) return signed is
        constant left: natural := input'high - nr_bits;
        constant right: natural := input'low;
        variable left_bits: signed(nr_bits downto 0);
        variable sign: std_logic;
        variable output: signed(left-right downto 0);
    begin
        left_bits := input(input'high downto left);
        if left_bits = (nr_bits downto 0 => '0') or 
           (left_bits = (nr_bits downto 0 => '1') and
            input(left-1 downto 0) /= (left-1 downto right => '0'))
        then
           output := input(left downto right);
        else
           sign := input(input'high);
           output := (others => not sign);
           output(output'high) := sign;
           output(0) := '1';
        end if;
        return output;
    end;

-- Quantization functions

    function arx_truncate(
        input: unsigned;
        constant nr_bits: natural
    ) return unsigned is
        constant left: natural := input'high;
        constant right: natural := input'low + nr_bits;
        variable output: unsigned(left-right downto 0);
    begin
        output := input(left downto right);
        return output;
    end;

    function arx_truncate(
        input: signed;
        constant nr_bits: natural
    ) return signed is
        constant left: natural := input'high;
        constant right: natural := input'low + nr_bits;
        variable output: signed(left-right downto 0);
    begin
        output := input(left downto right);
        return output;
    end;

    function arx_round(
        input: unsigned;
        constant nr_bits: natural
    ) return unsigned is
        constant out_left: natural := input'high - input'low - nr_bits;
        variable data_in: unsigned(input'high - input'low downto 0);
        variable carry : unsigned(out_left downto 0);
        variable output : unsigned(out_left downto 0);
    begin
        data_in := input;
        carry := (others => '0');
        carry(0) := data_in(nr_bits-1);
        output := data_in(data_in'high downto nr_bits) + carry;
        return output;
    end;

    function arx_round(
        input: signed;
        constant nr_bits: natural
    ) return signed is
        constant out_left: natural := input'high - input'low - nr_bits;
        variable data_in: signed(input'high - input'low downto 0);
        variable carry : signed(out_left downto 0);
        variable output : signed(out_left downto 0);
    begin
        data_in := input;
        carry := (others => '0');
        carry(0) := data_in(nr_bits-1);
        output := data_in(data_in'high downto nr_bits) + carry;
        return output;
    end;

    function arx_round_zero(
        input: unsigned;
        constant nr_bits: natural
    ) return unsigned is
        constant out_left: natural := input'high - input'low - nr_bits;
        variable data_in: unsigned(input'high - input'low downto 0);
        variable carry : unsigned(out_left downto 0);
        variable output : unsigned(out_left downto 0);
        variable right_bits : unsigned(nr_bits-1 downto 0);
    begin
        data_in := input;
        carry := (others => '0');
        right_bits := data_in(nr_bits-1 downto 0);
        if right_bits = (nr_bits-1 downto 0 => '0') then
            carry(0) := '0';
        else
            carry(0) := data_in(nr_bits-1);
        end if;
        output := data_in(data_in'high downto nr_bits) + carry;
        return output;
    end;

    function arx_round_zero(
        input: signed;
        constant nr_bits: natural
    ) return signed is
        constant out_left: natural := input'high - input'low - nr_bits;
        variable data_in: signed(input'high - input'low downto 0);
        variable carry : signed(out_left downto 0);
        variable output : signed(out_left downto 0);
        variable right_bits : signed(nr_bits-1 downto 0);
    begin
        data_in := input;
        carry := (others => '0');
        right_bits := data_in(nr_bits-1 downto 0);
        if right_bits = (nr_bits-1 downto 0 => '0') then
            carry(0) := data_in(data_in'high) and data_in(nr_bits-1);
        else
            carry(0) := data_in(nr_bits-1);
        end if;
        output := data_in(data_in'high downto nr_bits) + carry;
        return output;
    end;

    function arx_round_inf(
        input: unsigned;
        constant nr_bits: natural
    ) return unsigned is
        constant out_left: natural := input'high - input'low - nr_bits;
        variable data_in: unsigned(input'high - input'low downto 0);
        variable carry : unsigned(out_left downto 0);
        variable output : unsigned(out_left downto 0);
    begin
        data_in := input;
        carry := (others => '0');
        carry(0) := data_in(nr_bits-1);
        output := data_in(data_in'high downto nr_bits) + carry;
        return output;
    end;

    function arx_round_inf(
        input: signed;
        constant nr_bits: natural
    ) return signed is
        constant out_left: natural := input'high - input'low - nr_bits;
        variable data_in: signed(input'high - input'low downto 0);
        variable carry : signed(out_left downto 0);
        variable output : signed(out_left downto 0);
        variable right_bits : signed(nr_bits-1 downto 0);
    begin
        data_in := input;
        carry := (others => '0');
        right_bits := data_in(nr_bits-1 downto 0);
        if right_bits = (nr_bits-1 downto 0 => '0') then
            carry(0) := data_in(data_in'high) and (not data_in(nr_bits-1));
        else
            carry(0) := data_in(nr_bits-1);
        end if;
        output := data_in(data_in'high downto nr_bits) + carry;
        return output;
    end;

end;
