set C_TypeInfoList {{ 
"sinGen" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"Fs": [[], {"scalar": "unsigned int"}] }, {"cycle": [[], {"scalar": "unsigned int"}] }, {"amp": [[], {"scalar": "unsigned int"}] }, {"binOffset": [[], {"scalar": "unsigned int"}] }, {"outIQ": [[], {"array": [ {"scalar": "unsigned int"}, [256]]}] }],[],""]
}}
set moduleName sinGen
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {sinGen}
set C_modelType { void 0 }
set C_modelArgList { 
	{ Fs int 32 unused {axi_slave 0}  }
	{ cycle int 32 regular {axi_slave 0}  }
	{ amp int 32 regular {axi_slave 0}  }
	{ binOffset int 32 regular {axi_slave 0}  }
	{ outIQ int 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Fs", "interface" : "axi_slave", "bundle":"CRTLS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Fs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "cycle", "interface" : "axi_slave", "bundle":"CRTLS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cycle","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "amp", "interface" : "axi_slave", "bundle":"CRTLS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "amp","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "binOffset", "interface" : "axi_slave", "bundle":"CRTLS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "binOffset","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "outIQ", "interface" : "axi_slave", "bundle":"CRTLS","type":"ap_memory","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "outIQ","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}], "offset" : {"out":1024}, "offset_end" : {"out":2047}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_CRTLS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTLS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTLS_AWADDR sc_in sc_lv 12 signal -1 } 
	{ s_axi_CRTLS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTLS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTLS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CRTLS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CRTLS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTLS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTLS_ARADDR sc_in sc_lv 12 signal -1 } 
	{ s_axi_CRTLS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTLS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTLS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CRTLS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CRTLS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTLS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTLS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CRTLS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "CRTLS", "role": "AWADDR" },"address":[{"name":"sinGen","role":"start","value":"0","valid_bit":"0"},{"name":"sinGen","role":"continue","value":"0","valid_bit":"4"},{"name":"sinGen","role":"auto_start","value":"0","valid_bit":"7"},{"name":"Fs","role":"data","value":"16"},{"name":"cycle","role":"data","value":"24"},{"name":"amp","role":"data","value":"32"},{"name":"binOffset","role":"data","value":"40"}] },
	{ "name": "s_axi_CRTLS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLS", "role": "AWVALID" } },
	{ "name": "s_axi_CRTLS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLS", "role": "AWREADY" } },
	{ "name": "s_axi_CRTLS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLS", "role": "WVALID" } },
	{ "name": "s_axi_CRTLS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLS", "role": "WREADY" } },
	{ "name": "s_axi_CRTLS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CRTLS", "role": "WDATA" } },
	{ "name": "s_axi_CRTLS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CRTLS", "role": "WSTRB" } },
	{ "name": "s_axi_CRTLS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "CRTLS", "role": "ARADDR" },"address":[{"name":"sinGen","role":"start","value":"0","valid_bit":"0"},{"name":"sinGen","role":"done","value":"0","valid_bit":"1"},{"name":"sinGen","role":"idle","value":"0","valid_bit":"2"},{"name":"sinGen","role":"ready","value":"0","valid_bit":"3"},{"name":"sinGen","role":"auto_start","value":"0","valid_bit":"7"},{"name":"outIQ","role":"data","value":"1024"}] },
	{ "name": "s_axi_CRTLS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLS", "role": "ARVALID" } },
	{ "name": "s_axi_CRTLS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLS", "role": "ARREADY" } },
	{ "name": "s_axi_CRTLS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLS", "role": "RVALID" } },
	{ "name": "s_axi_CRTLS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLS", "role": "RREADY" } },
	{ "name": "s_axi_CRTLS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CRTLS", "role": "RDATA" } },
	{ "name": "s_axi_CRTLS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CRTLS", "role": "RRESP" } },
	{ "name": "s_axi_CRTLS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLS", "role": "BVALID" } },
	{ "name": "s_axi_CRTLS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLS", "role": "BREADY" } },
	{ "name": "s_axi_CRTLS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CRTLS", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "interrupt", "role": "default" }}  ]}
set Spec2ImplPortList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
