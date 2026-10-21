.class Lcom/lsec/core/util/LogScreen$2;
.super Ljava/lang/Object;
.source "LogScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lsec/core/util/LogScreen;->show(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/lsec/core/util/LogScreen;->instance:Lcom/lsec/core/util/LogScreen;

    iget-object v0, v0, Lcom/lsec/core/util/LogScreen;->logPreview:Landroid/widget/TextView;

    sget-object v1, Lcom/lsec/core/util/LogScreen;->instance:Lcom/lsec/core/util/LogScreen;

    iget-object v1, v1, Lcom/lsec/core/util/LogScreen;->logs:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method
