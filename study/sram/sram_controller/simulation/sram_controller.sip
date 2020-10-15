set_global_assignment -entity "sram_controller" -library "lib_sram_controller" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "sram_controller" -library "lib_sram_controller" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "sram_controller" -library "lib_sram_controller" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_sram_controller" -name SPD_FILE [file join $::quartus(sip_path) "../sram_controller.spd"]
set_global_assignment -library "lib_sram_controller" -name MISC_FILE [file join $::quartus(sip_path) "../../sram_controller.qsys"]

set_global_assignment -library "lib_sram_controller" -name MISC_FILE [file join $::quartus(sip_path) "sram_controller.vhd"]
