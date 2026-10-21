.class Landroid/os/Broadcaster$Registration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Broadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Registration"
.end annotation


# instance fields
.field public next:Landroid/os/Broadcaster$Registration;

.field public prev:Landroid/os/Broadcaster$Registration;

.field public senderWhat:I

.field public targetWhats:[I

.field public targets:[Landroid/os/Handler;

.field public final synthetic this$0:Landroid/os/Broadcaster;


# direct methods
.method private constructor <init>(Landroid/os/Broadcaster;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/os/Broadcaster$Registration;->this$0:Landroid/os/Broadcaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;)V

    return-void
.end method
