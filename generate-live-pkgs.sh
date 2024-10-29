#!/bin/bash

set -e

network=$1

CANNON=${CANNON:-cannon}

echo "Configuring Uniswap"
if [ "$network" = "mainnet" ]; then
  $CANNON alter uniswap:3.0.1@main --chain-id 1 set-contract-address NFTDescriptor 0x42B24A95702b9986e82d421cC3568932790A48Ec
  $CANNON alter uniswap:3.0.1@main --chain-id 1 set-contract-address NonfungibleTokenPositionDescriptor 0x91ae842A5Ffd8d12023116943e72A606179294f3
  $CANNON alter uniswap:3.0.1@main --chain-id 1 set-contract-address TransparentUpgradeableProxy 0xEe6A57eC80ea46401049E92587E52f5Ec1c24785
  $CANNON alter uniswap:3.0.1@main --chain-id 1 set-contract-address ProxyAdmin 0xB753548F6E010e7e680BA186F9Ca1BdAB2E90cf2
  $CANNON alter uniswap:3.0.1@main --chain-id 1 set-contract-address NonfungiblePositionManager 0xC36442b4a4522E871399CD717aBDD847Ab11FE88
  $CANNON alter uniswap:3.0.1@main --chain-id 1 set-contract-address QuoterV2 0x61fFE014bA17989E743c5F6cB21bF9697530B21e
  $CANNON alter uniswap:3.0.1@main --chain-id 1 set-contract-address SwapRouter 0xE592427A0AEce92De3Edee1F18E0157C05861564
  $CANNON alter uniswap:3.0.1@main --chain-id 1 set-contract-address TickLens 0xbfd8137f7d1516D3ea5cA83523914859ec47F573

elif [ "$network" = "sepolia" ]; then
  $CANNON alter uniswap:3.0.1@main --chain-id 11155111 set-contract-address NFTDescriptor 0x3B5E3c5E595D85fbFBC2a42ECC091e183E76697C
  $CANNON alter uniswap:3.0.1@main --chain-id 11155111 set-contract-address NonfungibleTokenPositionDescriptor 0x5bE4DAa6982C69aD20A57F1e68cBcA3D37de6207
  $CANNON alter uniswap:3.0.1@main --chain-id 11155111 set-contract-address ProxyAdmin 0x0b343475d44EC2b4b8243EBF81dc888BF0A14b36
  $CANNON alter uniswap:3.0.1@main --chain-id 11155111 set-contract-address NonfungiblePositionManager 0x1238536071E1c677A632429e3655c799b22cDA52
  $CANNON alter uniswap:3.0.1@main --chain-id 11155111 set-contract-address QuoterV2 0xEd1f6473345F45b75F8179591dd5bA1888cf2FB3
fi