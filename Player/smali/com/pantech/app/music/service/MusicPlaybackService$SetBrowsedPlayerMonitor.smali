.class Lcom/pantech/app/music/service/MusicPlaybackService$SetBrowsedPlayerMonitor;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Landroid/media/RemoteControlClient$OnSetBrowsedPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetBrowsedPlayerMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/MusicPlaybackService;


# direct methods
.method private constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V
    .registers 2

    .prologue
    .line 1797
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$SetBrowsedPlayerMonitor;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackService;Lcom/pantech/app/music/service/MusicPlaybackService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p2, "x1"    # Lcom/pantech/app/music/service/MusicPlaybackService$1;

    .prologue
    .line 1797
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService$SetBrowsedPlayerMonitor;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    return-void
.end method


# virtual methods
.method public onSetBrowsedPlayer()V
    .registers 3

    .prologue
    .line 1801
    const-string v0, "MusicPlaybackService"

    const-string v1, "onSetBrowsedPlayer"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$SetBrowsedPlayerMonitor;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$4100(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicPlaybackService$AvrcpHandler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService$AvrcpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1803
    return-void
.end method
