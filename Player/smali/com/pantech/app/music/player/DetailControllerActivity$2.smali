.class Lcom/pantech/app/music/player/DetailControllerActivity$2;
.super Ljava/lang/Object;
.source "DetailControllerActivity.java"

# interfaces
.implements Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/DetailControllerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/DetailControllerActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/DetailControllerActivity;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/pantech/app/music/player/DetailControllerActivity$2;->this$0:Lcom/pantech/app/music/player/DetailControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "howlong"    # J
    .param p4, "repcnt"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity$2;->this$0:Lcom/pantech/app/music/player/DetailControllerActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/DetailControllerActivity;->access$200(Lcom/pantech/app/music/player/DetailControllerActivity;)V

    .line 86
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity$2;->this$0:Lcom/pantech/app/music/player/DetailControllerActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/DetailControllerActivity;->access$100(Lcom/pantech/app/music/player/DetailControllerActivity;)V

    .line 87
    return-void
.end method
