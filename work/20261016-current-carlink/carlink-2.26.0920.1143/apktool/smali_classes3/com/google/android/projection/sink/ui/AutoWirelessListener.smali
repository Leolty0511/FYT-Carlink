.class public Lcom/google/android/projection/sink/ui/AutoWirelessListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;
    }
.end annotation


# static fields
.field public static instance:Lcom/google/android/projection/sink/ui/AutoWirelessListener;


# instance fields
.field listener:Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/projection/sink/ui/AutoWirelessListener;

    invoke-direct {v0}, Lcom/google/android/projection/sink/ui/AutoWirelessListener;-><init>()V

    sput-object v0, Lcom/google/android/projection/sink/ui/AutoWirelessListener;->instance:Lcom/google/android/projection/sink/ui/AutoWirelessListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/projection/sink/ui/AutoWirelessListener;->listener:Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getListener()Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/ui/AutoWirelessListener;->listener:Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;

    return-object v0
.end method

.method public setListener(Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/AutoWirelessListener;->listener:Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;

    return-void
.end method
