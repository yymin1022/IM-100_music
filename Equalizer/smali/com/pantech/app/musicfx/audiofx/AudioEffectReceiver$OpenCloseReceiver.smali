.class public Lcom/pantech/app/musicfx/audiofx/AudioEffectReceiver$OpenCloseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioEffectReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/musicfx/audiofx/AudioEffectReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenCloseReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    if-eqz p2, :cond_2f

    .line 47
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-class v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 53
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectReceiver$OpenCloseReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 54
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectReceiver$OpenCloseReceiver;->abortBroadcast()V

    .line 56
    :cond_2f
    return-void
.end method
