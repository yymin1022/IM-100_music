.class Lcom/pantech/app/music/service/MusicPlaybackControl$6;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlaybackControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/MusicPlaybackControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackControl;)V
    .registers 2

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$6;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1240
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1241
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1242
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$6;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->pause()V

    .line 1244
    :cond_11
    return-void
.end method
