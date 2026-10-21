.class public Lo1/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo1/l0;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo1/l0;

    invoke-direct {v0}, Lo1/l0;-><init>()V

    iput-object v0, p0, Lo1/a0;->a:Lo1/l0;

    .line 3
    iput p1, p0, Lo1/a0;->b:I

    .line 4
    iput p2, p0, Lo1/a0;->c:I

    return-void
.end method
