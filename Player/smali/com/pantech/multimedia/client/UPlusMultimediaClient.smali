.class public Lcom/pantech/multimedia/client/UPlusMultimediaClient;
.super Lcom/pantech/multimedia/client/MultimediaClient;
.source "UPlusMultimediaClient.java"


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field private mReqeustRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/pantech/multimedia/client/MultimediaClient;-><init>(Landroid/content/Context;I)V

    .line 56
    new-instance v0, Lcom/pantech/multimedia/client/UPlusMultimediaClient$1;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/client/UPlusMultimediaClient$1;-><init>(Lcom/pantech/multimedia/client/UPlusMultimediaClient;)V

    iput-object v0, p0, Lcom/pantech/multimedia/client/UPlusMultimediaClient;->mReqeustRunnable:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Lcom/pantech/multimedia/client/UPlusMultimediaClient$2;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/client/UPlusMultimediaClient$2;-><init>(Lcom/pantech/multimedia/client/UPlusMultimediaClient;)V

    iput-object v0, p0, Lcom/pantech/multimedia/client/UPlusMultimediaClient;->mHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "keywords"    # Ljava/lang/String;
    .param p4, "category"    # Ljava/lang/String;
    .param p5, "total"    # I
    .param p6, "startIndex"    # I

    .prologue
    .line 28
    invoke-direct/range {p0 .. p6}, Lcom/pantech/multimedia/client/MultimediaClient;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)V

    .line 56
    new-instance v0, Lcom/pantech/multimedia/client/UPlusMultimediaClient$1;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/client/UPlusMultimediaClient$1;-><init>(Lcom/pantech/multimedia/client/UPlusMultimediaClient;)V

    iput-object v0, p0, Lcom/pantech/multimedia/client/UPlusMultimediaClient;->mReqeustRunnable:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Lcom/pantech/multimedia/client/UPlusMultimediaClient$2;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/client/UPlusMultimediaClient$2;-><init>(Lcom/pantech/multimedia/client/UPlusMultimediaClient;)V

    iput-object v0, p0, Lcom/pantech/multimedia/client/UPlusMultimediaClient;->mHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method


# virtual methods
.method protected processResponse(ILjava/lang/String;)V
    .registers 7
    .param p1, "message"    # I
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v2, p0, Lcom/pantech/multimedia/client/UPlusMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    if-eqz v2, :cond_16

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "FEED_SUCCESS":I
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 49
    .local v1, "code":I
    if-ne v1, v0, :cond_17

    .line 50
    iget-object v2, p0, Lcom/pantech/multimedia/client/UPlusMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    iget-object v3, p0, Lcom/pantech/multimedia/client/UPlusMultimediaClient;->mFeedData:Lcom/pantech/multimedia/data/FeedData;

    invoke-interface {v2, v3, p1}, Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;->onResponse(Ljava/lang/Object;I)V

    .line 54
    .end local v0    # "FEED_SUCCESS":I
    .end local v1    # "code":I
    :cond_16
    :goto_16
    return-void

    .line 52
    .restart local v0    # "FEED_SUCCESS":I
    .restart local v1    # "code":I
    :cond_17
    iget-object v3, p0, Lcom/pantech/multimedia/client/UPlusMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    iget-object v2, p0, Lcom/pantech/multimedia/client/UPlusMultimediaClient;->mFeedData:Lcom/pantech/multimedia/data/FeedData;

    check-cast v2, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;

    invoke-virtual {v2}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->getResMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v1}, Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;->onResponse(Ljava/lang/Object;I)V

    goto :goto_16
.end method

.method public request()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v2, p0, Lcom/pantech/multimedia/client/UPlusMultimediaClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/pantech/multimedia/common/Util;->chkNetworkEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 41
    :cond_9
    :goto_9
    return v1

    .line 34
    :cond_a
    iget-object v2, p0, Lcom/pantech/multimedia/client/UPlusMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    if-eqz v2, :cond_9

    .line 35
    invoke-super {p0}, Lcom/pantech/multimedia/client/MultimediaClient;->request()Z

    .line 37
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/pantech/multimedia/client/UPlusMultimediaClient;->mReqeustRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 38
    .local v0, "th":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 39
    const/4 v1, 0x1

    goto :goto_9
.end method
