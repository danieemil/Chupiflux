##-----------------------------LICENSE NOTICE------------------------------------
##  This file is part of Miss Input: An Amstrad CPC Game 
##  Copyright (C) 2019 Enrique Vidal Cayuela, Daniel Saura Martínez
##
##  This program is free software: you can redistribute it and/or modify
##  it under the terms of the GNU Lesser General Public License as published by
##  the Free Software Foundation, either version 3 of the License, or
##  (at your option) any later version.
##
##  This program is distributed in the hope that it will be useful,
##  but WITHOUT ANY WARRANTY; without even the implied warranty of
##  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##  GNU Lesser General Public License for more details.
##
##  You should have received a copy of the GNU Lesser General Public License
##  along with this program.  If not, see <http://www.gnu.org/licenses/>.
##-------------------------------------------------------------------------------

############################################################################
##                        CPCTELERA ENGINE                                ##
##                 Automatic compression utilities                        ##
##------------------------------------------------------------------------##
## This file is intended for users to automate the generation of          ##
## compressed files and their inclusion in users' projects.               ##
############################################################################

## COMPRESSION EXAMPLE (Uncomment lines to use)
##

## First 3 calls to ADD2PACK add enemy, hero and background
## graphics (previously converted to binary data) into the 
## compressed group 'mygraphics'. After that, call to PACKZX7B
## compresses all the data and generates an array with the result
## that is placed in src/mygraphics.c & src/mygraphics.h, ready
## to be included and used by other modules.
##
#$(eval $(call ADD2PACK,mygraphics,gfx/enemy.bin))
#$(eval $(call ADD2PACK,mygraphics,gfx/hero.bin))
#$(eval $(call ADD2PACK,mygraphics,gfx/background.bin))
#$(eval $(call PACKZX7B,mygraphics,src/))



$(eval $(call ADD2PACK,map_01,src/maps/map01.bin))
$(eval $(call PACKZX7B,map_01,src/bins/))

$(eval $(call ADD2PACK,map_02,src/maps/map02.bin))
$(eval $(call PACKZX7B,map_02,src/bins/))

$(eval $(call ADD2PACK,map_06,src/maps/map06.bin))
$(eval $(call PACKZX7B,map_06,src/bins/))

$(eval $(call ADD2PACK,map_03,src/maps/map03.bin))
$(eval $(call PACKZX7B,map_03,src/bins/))

$(eval $(call ADD2PACK,map_04,src/maps/map04.bin))
$(eval $(call PACKZX7B,map_04,src/bins/))

$(eval $(call ADD2PACK,map_07,src/maps/map07.bin))
$(eval $(call PACKZX7B,map_07,src/bins/))

$(eval $(call ADD2PACK,map_05,src/maps/map05.bin))
$(eval $(call PACKZX7B,map_05,src/bins/))

$(eval $(call ADD2PACK,map_08,src/maps/map08.bin))
$(eval $(call PACKZX7B,map_08,src/bins/))

$(eval $(call ADD2PACK,map_09,src/maps/map09.bin))
$(eval $(call PACKZX7B,map_09,src/bins/))

$(eval $(call ADD2PACK,map_10,src/maps/map10.bin))
$(eval $(call PACKZX7B,map_10,src/bins/))

$(eval $(call ADD2PACK,map_15,src/maps/map15.bin))
$(eval $(call PACKZX7B,map_15,src/bins/))

$(eval $(call ADD2PACK,map_17,src/maps/map17.bin))
$(eval $(call PACKZX7B,map_17,src/bins/))

$(eval $(call ADD2PACK,map_11,src/maps/map11.bin))
$(eval $(call PACKZX7B,map_11,src/bins/))

$(eval $(call ADD2PACK,map_12,src/maps/map12.bin))
$(eval $(call PACKZX7B,map_12,src/bins/))

$(eval $(call ADD2PACK,map_13,src/maps/map13.bin))
$(eval $(call PACKZX7B,map_13,src/bins/))

$(eval $(call ADD2PACK,map_14,src/maps/map14.bin))
$(eval $(call PACKZX7B,map_14,src/bins/))

$(eval $(call ADD2PACK,map_16,src/maps/map16.bin))
$(eval $(call PACKZX7B,map_16,src/bins/))

$(eval $(call ADD2PACK,map_18,src/maps/map18.bin))
$(eval $(call PACKZX7B,map_18,src/bins/))

$(eval $(call ADD2PACK,map_19,src/maps/map19.bin))
$(eval $(call PACKZX7B,map_19,src/bins/))

$(eval $(call ADD2PACK,map_20,src/maps/map20.bin))
$(eval $(call PACKZX7B,map_20,src/bins/))

$(eval $(call ADD2PACK,map_21,src/maps/map21.bin))
$(eval $(call PACKZX7B,map_21,src/bins/))

$(eval $(call ADD2PACK,map_23,src/maps/map23.bin))
$(eval $(call PACKZX7B,map_23,src/bins/))

$(eval $(call ADD2PACK,map_24,src/maps/map24.bin))
$(eval $(call PACKZX7B,map_24,src/bins/))

$(eval $(call ADD2PACK,title_screen_c,src/bins/title_screen.bin))
$(eval $(call PACKZX7B,title_screen_c,src/bins/))

$(eval $(call ADD2PACK,credits_c,src/bins/ImagenCreditos.bin))
$(eval $(call PACKZX7B,credits_c,src/bins/))

$(eval $(call ADD2PACK,help_c,src/bins/ImagenInfo.bin))
$(eval $(call PACKZX7B,help_c,src/bins/))

$(eval $(call ADD2PACK,level_complete_big_c,src/bins/LevelComplete_big.bin))
$(eval $(call PACKZX7B,level_complete_big_c,src/bins/))

$(eval $(call ADD2PACK,the_end_big_c,src/bins/ImagenTheEnd_big.bin))
$(eval $(call PACKZX7B,the_end_big_c,src/bins/))




############################################################################
##              DETAILED INSTRUCTIONS AND PARAMETERS                      ##
##------------------------------------------------------------------------##
##                                                                        ##
## Macros used for compression are ADD2PACK and PACKZX7B:                 ##
##                                                                        ##
##	ADD2PACK: Adds files to packed (compressed) groups. Each call to this ##
##  		  macro will add a file to a named compressed group.          ##
##  PACKZX7B: Compresses all files in a group into a single binary and    ##
##            generates a C-array and a header to comfortably use it from ##
##            inside your code.                                           ##
##                                                                        ##
##------------------------------------------------------------------------##
##                                                                        ##
##  $(eval $(call ADD2PACK,<packname>,<file>))                            ##
##                                                                        ##
##		Sequentially adds <file> to compressed group <packname>. Each     ##
## call to this macro adds a new <file> after the latest one added.       ##
## packname could be any valid C identifier.                              ##
##                                                                        ##
##  Parameters:                                                           ##
##  (packname): Name of the compressed group where the file will be added ##
##  (file)    : File to be added at the end of the compressed group       ##
##                                                                        ##
##------------------------------------------------------------------------##
##                                                                        ##
##  $(eval $(call PACKZX7B,<packname>,<dest_path>))                       ##
##                                                                        ##
##		Compresses all files in the <packname> group using ZX7B algorithm ##
## and generates 2 files: <packname>.c and <packname>.h that contain a    ##
## C-array with the compressed data and a header file for declarations.   ##
## Generated files are moved to the folder <dest_path>.                   ##
##                                                                        ##
##  Parameters:                                                           ##
##  (packname) : Name of the compressed group to use for packing          ##
##  (dest_path): Destination path for generated output files              ##
##                                                                        ##
############################################################################
##                                                                        ##
## Important:                                                             ##
##  * Do NOT separate macro parameters with spaces, blanks or other chars.##
##    ANY character you put into a macro parameter will be passed to the  ##
##    macro. Therefore ...,src/sprites,... will represent "src/sprites"   ##
##    folder, whereas ...,  src/sprites,... means "  src/sprites" folder. ##
##  * You can omit parameters by leaving them empty.                      ##
##  * Parameters (4) and (5) are optional and generally not required.     ##
############################################################################
