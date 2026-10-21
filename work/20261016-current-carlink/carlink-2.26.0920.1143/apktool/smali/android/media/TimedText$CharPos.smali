.class public final Landroid/media/TimedText$CharPos;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharPos"
.end annotation


# instance fields
.field public final endChar:I

.field public final startChar:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/media/TimedText$CharPos;->startChar:I

    .line 5
    .line 6
    iput p2, p0, Landroid/media/TimedText$CharPos;->endChar:I

    .line 7
    .line 8
    return-void
.end method
