.class public final Landroid/database/CharArrayBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public data:[C

.field public sizeCopied:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [C

    iput-object p1, p0, Landroid/database/CharArrayBuffer;->data:[C

    return-void
.end method

.method public constructor <init>([C)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroid/database/CharArrayBuffer;->data:[C

    return-void
.end method
