.class public Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;
.super Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;
.source "TxPowerLevel.java"


# static fields
.field public static final GATT_UUID:Ljava/util/UUID;


# instance fields
.field private mTxPower:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "2A07"

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->GATT_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->mTxPower:[B

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 84
    const/16 v0, -0x64

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->setTxPower(I)Z

    .line 85
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "txPower"    # I

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->mTxPower:[B

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->setTxPower(I)Z

    .line 117
    return-void
.end method

.method public constructor <init>(ILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "txPower"    # I
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->mTxPower:[B

    .line 128
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->setTxPower(I)Z

    .line 130
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->mTxPower:[B

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->setValue([B)Z

    .line 95
    return-void
.end method

.method public constructor <init>([BLandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/mediatek/bluetoothgatt/characteristic/CharacteristicBase;-><init>()V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->mTxPower:[B

    .line 104
    invoke-virtual {p0, p2}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->setValue([B)Z

    .line 106
    return-void
.end method


# virtual methods
.method public getTxPower()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->mTxPower:[B

    invoke-static {v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint8ToInt([B)I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->GATT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 5

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 164
    .local v2, "value":[B
    const/4 v0, 0x0

    .line 166
    .local v0, "dstPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->isSupportTxPower()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->mTxPower:[B

    array-length v1, v3

    .line 168
    .local v1, "fieldLen":I
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->mTxPower:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 169
    add-int/2addr v0, v1

    .line 172
    .end local v1    # "fieldLen":I
    :cond_0
    return-object v2
.end method

.method public isSupportTxPower()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->isSupportTxPower()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->mTxPower:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTxPower(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 217
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sint8RangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    .line 220
    :cond_0
    invoke-static {p1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSint8(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->mTxPower:[B

    .line 221
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->updateGattCharacteristic()V

    .line 222
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setValue([B)Z
    .locals 4
    .param p1, "value"    # [B

    .prologue
    const/4 v2, 0x0

    .line 183
    const/4 v1, 0x0

    .line 185
    .local v1, "srcPos":I
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->isSupportTxPower()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->mTxPower:[B

    array-length v0, v3

    .line 188
    .local v0, "fieldLen":I
    array-length v3, p1

    invoke-virtual {p0, v3, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->setValueRangeCheck(III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 197
    .end local v0    # "fieldLen":I
    :goto_0
    return v2

    .line 192
    .restart local v0    # "fieldLen":I
    :cond_0
    iget-object v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->mTxPower:[B

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 193
    add-int/2addr v1, v0

    .line 196
    .end local v0    # "fieldLen":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/TxPowerLevel;->updateGattCharacteristic()V

    .line 197
    const/4 v2, 0x1

    goto :goto_0
.end method
