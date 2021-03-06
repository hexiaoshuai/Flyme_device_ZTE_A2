.class public Lcom/mediatek/bluetoothgatt/service/Pass;
.super Lcom/mediatek/bluetoothgatt/service/ServiceBase;
.source "Pass.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "180E"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetoothgatt/service/Pass;->GATT_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/service/ServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method addAlertStatus()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 92
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_ALERT_STATUS:Ljava/util/UUID;

    const/16 v3, 0x12

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/AlertStatus;->getValue()[B

    move-result-object v5

    move-object v0, p0

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Pass;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 101
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    const/16 v2, 0x11

    invoke-virtual {p0, v1, v0, v2}, Lcom/mediatek/bluetoothgatt/service/Pass;->addDescriptor(ZLjava/util/UUID;I)V

    .line 107
    return-void
.end method

.method addRingerControlPoint()V
    .locals 6

    .prologue
    .line 136
    const/4 v1, 0x1

    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RINGER_CONTROL_POINT:Ljava/util/UUID;

    const/4 v3, 0x4

    const/16 v4, 0x10

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RingerControlPoint;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RingerControlPoint;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RingerControlPoint;->getValue()[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Pass;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 144
    return-void
.end method

.method addRingerSetting()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 114
    sget-object v2, Lcom/mediatek/bluetoothgatt/GattUuid;->CHAR_RINGER_SETTING:Ljava/util/UUID;

    const/16 v3, 0x12

    new-instance v0, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;

    invoke-direct {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/bluetoothgatt/characteristic/RingerSetting;->getValue()[B

    move-result-object v5

    move-object v0, p0

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetoothgatt/service/Pass;->addCharacteristic(ZLjava/util/UUID;II[B)V

    .line 123
    sget-object v0, Lcom/mediatek/bluetoothgatt/GattUuid;->DESCR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    const/16 v2, 0x11

    invoke-virtual {p0, v1, v0, v2}, Lcom/mediatek/bluetoothgatt/service/Pass;->addDescriptor(ZLjava/util/UUID;I)V

    .line 129
    return-void
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/mediatek/bluetoothgatt/service/Pass;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method protected loadServiceConfig()V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Pass;->addAlertStatus()V

    .line 83
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Pass;->addRingerSetting()V

    .line 84
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/service/Pass;->addRingerControlPoint()V

    .line 85
    return-void
.end method
