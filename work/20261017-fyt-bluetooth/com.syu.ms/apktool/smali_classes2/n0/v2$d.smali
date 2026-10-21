.class public Ln0/v2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/v2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/v2;


# direct methods
.method public constructor <init>(Ln0/v2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/v2$d;->a:Ln0/v2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->h:I

    const-string v1, "standby"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_0

    const-string v0, "xyz:star"

    .line 2
    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ln0/v2$d;->a:Ln0/v2;

    iget-object v1, v1, Ln0/v2;->A:Landroid/content/ClipboardManager;

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lu0/b;->h:I

    if-eq v0, v2, :cond_1

    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "xyz:stop"

    .line 5
    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 6
    iget-object v1, p0, Ln0/v2$d;->a:Ln0/v2;

    iget-object v1, v1, Ln0/v2;->A:Landroid/content/ClipboardManager;

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_2
    :goto_0
    return-void
.end method
