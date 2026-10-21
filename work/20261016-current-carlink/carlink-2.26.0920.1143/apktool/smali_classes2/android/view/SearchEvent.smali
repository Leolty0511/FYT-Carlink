.class public Landroid/view/SearchEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mInputDevice:Landroid/view/InputDevice;


# direct methods
.method public constructor <init>(Landroid/view/InputDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/view/SearchEvent;->mInputDevice:Landroid/view/InputDevice;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getInputDevice()Landroid/view/InputDevice;
    .locals 1

    iget-object v0, p0, Landroid/view/SearchEvent;->mInputDevice:Landroid/view/InputDevice;

    return-object v0
.end method
