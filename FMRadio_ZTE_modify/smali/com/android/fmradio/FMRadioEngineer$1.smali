.class Lcom/android/fmradio/FMRadioEngineer$1;
.super Ljava/lang/Object;
.source "FMRadioEngineer.java"

# interfaces
.implements Lcom/android/fmradio/FmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/FMRadioEngineer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FMRadioEngineer;


# direct methods
.method constructor <init>(Lcom/android/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/fmradio/FMRadioEngineer$1;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 188
    const-string v2, "callback_flag"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 189
    .local v0, "flag":I
    const-string v2, "FmRx/FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "call back method flag:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/android/fmradio/FMRadioEngineer$1;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/fmradio/FMRadioEngineer;->access$0(Lcom/android/fmradio/FMRadioEngineer;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/android/fmradio/FMRadioEngineer$1;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/fmradio/FMRadioEngineer;->access$0(Lcom/android/fmradio/FMRadioEngineer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 197
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 198
    iget-object v2, p0, Lcom/android/fmradio/FMRadioEngineer$1;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/fmradio/FMRadioEngineer;->access$0(Lcom/android/fmradio/FMRadioEngineer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    iget-object v2, p0, Lcom/android/fmradio/FMRadioEngineer$1;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/fmradio/FMRadioEngineer;->access$0(Lcom/android/fmradio/FMRadioEngineer;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    return-void
.end method