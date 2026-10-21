.class public Landroid/media/Cea708CCParser$CaptionEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionEvent"
.end annotation


# instance fields
.field public final obj:Ljava/lang/Object;

.field public final type:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/media/Cea708CCParser$CaptionEvent;->type:I

    .line 5
    .line 6
    iput-object p2, p0, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method
