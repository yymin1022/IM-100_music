.class Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;
.super Ljava/lang/Object;
.source "MP3Header.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/common/MP3Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MP3HeaderType"
.end annotation


# instance fields
.field public brIndex:I

.field public frameVer:I

.field public layerID:I

.field public srIndex:I

.field final synthetic this$0:Lcom/pantech/app/music/common/MP3Header;


# direct methods
.method private constructor <init>(Lcom/pantech/app/music/common/MP3Header;)V
    .registers 2

    .prologue
    .line 242
    iput-object p1, p0, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;->this$0:Lcom/pantech/app/music/common/MP3Header;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/music/common/MP3Header;Lcom/pantech/app/music/common/MP3Header$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/pantech/app/music/common/MP3Header;
    .param p2, "x1"    # Lcom/pantech/app/music/common/MP3Header$1;

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/pantech/app/music/common/MP3Header$MP3HeaderType;-><init>(Lcom/pantech/app/music/common/MP3Header;)V

    return-void
.end method
