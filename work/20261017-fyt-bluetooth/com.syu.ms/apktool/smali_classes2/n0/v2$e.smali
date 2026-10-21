.class public Ln0/v2$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/v2;->X2()V
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
    iput-object p1, p0, Ln0/v2$e;->a:Ln0/v2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    :try_start_0
    const-string v0, "standby"

    const-string v1, "xyz:swc"

    .line 1
    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln0/v2$e;->a:Ln0/v2;

    iget-object v1, v1, Ln0/v2;->A:Landroid/content/ClipboardManager;

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x1

    return v0
.end method
