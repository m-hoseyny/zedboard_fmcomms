#--------------------Physical Constraints-----------------

set_property BOARD_PIN {rgmii_rxc} [get_ports rgmii_rxc]
set_property BOARD_PIN {rgmii_rx_ctl} [get_ports rgmii_rx_ctl]
set_property BOARD_PIN {rgmii_rd[0]} [get_ports rgmii_rxd[0]]

set_property BOARD_PIN {rgmii_rd[1]} [get_ports rgmii_rxd[1]]

set_property BOARD_PIN {rgmii_rd[2]} [get_ports rgmii_rxd[2]]

set_property BOARD_PIN {rgmii_rd[3]} [get_ports rgmii_rxd[3]]

set_property BOARD_PIN {rgmii_txc} [get_ports rgmii_txc]
set_property BOARD_PIN {rgmii_tx_ctl} [get_ports rgmii_tx_ctl]
set_property BOARD_PIN {rgmii_td[0]} [get_ports rgmii_txd[0]]

set_property BOARD_PIN {rgmii_td[1]} [get_ports rgmii_txd[1]]

set_property BOARD_PIN {rgmii_td[2]} [get_ports rgmii_txd[2]]

set_property BOARD_PIN {rgmii_td[3]} [get_ports rgmii_txd[3]]

set_property BOARD_PIN {mdio_io_mdc} [get_ports mdc]
set_property BOARD_PIN {mdio_io} [get_ports mdio]
