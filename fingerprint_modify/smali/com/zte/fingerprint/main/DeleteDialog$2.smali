.class Lcom/zte/fingerprint/main/DeleteDialog$2;
.super Ljava/lang/Object;
.source "DeleteDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/main/DeleteDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/main/DeleteDialog;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/main/DeleteDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/fingerprint/main/DeleteDialog$2;->this$0:Lcom/zte/fingerprint/main/DeleteDialog;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 34
    return-void
.end method