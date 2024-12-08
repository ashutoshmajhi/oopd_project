#ifndef WIFI5_H
#define WIFI5_H

#include "wifi_simulation.h"

class WiFi5 : public WiFiSimulation {
private:
    static constexpr double csiPacketSize = 200;  // 200 bytes per CSI packet
    static constexpr double parallelTransmissionTime = 0.015;  // 15 ms

public:
    WiFi5(int totalUsers, int packetsPerUser, double bandwidth);
    void runSimulation() override;
};

#endif // WIFI5_H
