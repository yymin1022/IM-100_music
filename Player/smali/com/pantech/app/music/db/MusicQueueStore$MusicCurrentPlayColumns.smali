.class public interface abstract Lcom/pantech/app/music/db/MusicQueueStore$MusicCurrentPlayColumns;
.super Ljava/lang/Object;
.source "MusicQueueStore.java"

# interfaces
.implements Lcom/pantech/app/music/db/MusicQueueStore$MusicQueueColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/db/MusicQueueStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MusicCurrentPlayColumns"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    const-string v0, "content://com.pantech.app.music.db.musicqueue/currentPlaySong"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/db/MusicQueueStore$MusicCurrentPlayColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
