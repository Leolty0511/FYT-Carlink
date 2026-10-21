.class final Landroid/view/AccessibilityInteractionController$MessageHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageHolder"
.end annotation


# instance fields
.field final mInterrogatingPid:I

.field final mInterrogatingTid:J

.field final mMessage:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$MessageHolder;->mMessage:Landroid/os/Message;

    .line 5
    .line 6
    iput p2, p0, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingPid:I

    .line 7
    .line 8
    iput-wide p3, p0, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingTid:J

    .line 9
    .line 10
    return-void
.end method
