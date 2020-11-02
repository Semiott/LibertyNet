template ClimateContingencyWarnings(WhistleCount) {
    signal private input WhistleType;
    signal private input WhistleSource;
    signal output WhistleIndex;

    signal int[WhistleCount];

    int[0] <== WhistleType * WhistleSource;
    for (var i=1; i<WhistleCount; i++) {
    int[i] <== int[i-1]*int[i-1] + WhistleSource;
    }

    WhistleIndex <== int[WhistleCount-1];
}

component main = ClimateContingencyWarnings(1000);
