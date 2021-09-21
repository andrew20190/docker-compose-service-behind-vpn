# Demonstration of service behind router in Docker

The purpose of this is if you have a service that needs to be routed via a VPN:

    [client service] ---> [VPN router] ---> [VPN provider] ---> [the big fluffy internet cloud thing]

Why you might need this:

    - web scraping that exits from a VPN
    - research into Tor, and you don't want to get abuse complaints from your ISP and/or visits from the police 
    - a trading program that needs a VPN link to reach the trading exchange 

## It's very simple, as it turns out

You do not manually need to do anything with iptables, routing, or anything else. It's automagical.

This turned out to be much simpler to achieve than I expected, using docker-compose. 

All that is needed is to include a `network_mode` stanza in the client service definition:

    network_mode: service:vpnlink

## Improvements to consider

You might want to add some restrictions to the VPN router to ensure that it is not allowed to communicate, except with the VPN provider.

That is left as an exercise for the reader.