.class Landroid/os/PowerManager$PrfmLock$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager$PrfmLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/PowerManager$PrfmLock;


# direct methods
.method public constructor <init>(Landroid/os/PowerManager$PrfmLock;)V
    .locals 0

    iput-object p1, p0, Landroid/os/PowerManager$PrfmLock$1;->this$1:Landroid/os/PowerManager$PrfmLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/os/PowerManager$PrfmLock$1;->this$1:Landroid/os/PowerManager$PrfmLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$PrfmLock;->release()V

    return-void
.end method
