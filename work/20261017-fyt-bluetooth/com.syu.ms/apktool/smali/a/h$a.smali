.class public La/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:I

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, La/h$a;->e:J

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 1
    iput p1, p0, La/h$a;->a:I

    .line 2
    iput p2, p0, La/h$a;->b:I

    return-void
.end method

.method public b(Z)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La/h$a;->c:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iput-boolean p1, p0, La/h$a;->c:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 3
    iget p1, p0, La/h$a;->d:I

    or-int/2addr p1, v0

    iput p1, p0, La/h$a;->d:I

    goto :goto_0

    .line 4
    :cond_1
    iget p1, p0, La/h$a;->d:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, La/h$a;->d:I

    :goto_0
    return v0
.end method
