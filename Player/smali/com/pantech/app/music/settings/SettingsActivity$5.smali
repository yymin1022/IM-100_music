.class Lcom/pantech/app/music/settings/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/settings/SettingsActivity;->startAudioEffectPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/settings/SettingsActivity;)V
    .registers 2

    .prologue
    .line 359
    iput-object p1, p0, Lcom/pantech/app/music/settings/SettingsActivity$5;->this$0:Lcom/pantech/app/music/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 362
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 363
    return-void
.end method
