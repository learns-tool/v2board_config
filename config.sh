#!/bin/bash

config_file="/etc/XrayR/config.yml"

echo "输入面板类型:SSpanel, NewV2board, PMpanel, Proxypanel, V2RaySocks, GoV2Panel"
read -p "面板类型: " panel_type
echo "输入面板地址:https://127.0.0.1"
read -p "面板地址: " api_host
echo "输入面板通讯密钥"
read -p "通讯密钥: " api_key
echo "输入节点类型:V2ray, Shadowsocks, Trojan, Shadowsocks-Plugin"
read -p "节点类型: " node_type
echo "输入节点ID"
read -p "节点ID: " node_id

sed -i "16s/.*/  - PanelType: \"$panel_type\"/" $config_file
sed -i "18s!.*!      ApiHost: \"$api_host\"!" $config_file
sed -i "19s/.*/      ApiKey: \"$api_key\"/" $config_file
sed -i "20s/.*/      NodeID: $node_id/" $config_file
sed -i "21s/.*/      NodeType: $node_type/" $config_file

echo "配置文件已成功修改。"
