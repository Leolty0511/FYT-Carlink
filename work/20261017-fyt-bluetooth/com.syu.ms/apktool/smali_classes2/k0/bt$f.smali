.class public Lk0/bt$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:B

.field public final synthetic b:Lk0/bt;


# direct methods
.method public constructor <init>(Lk0/bt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bt$f;->b:Lk0/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-byte p1, p0, Lk0/bt$f;->a:B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/bt$f;->b:Lk0/bt;

    iget v1, v0, Lk0/bt;->t:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/bt;->t:I

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-le v1, v4, :cond_0

    .line 2
    iput v3, v0, Lk0/bt;->t:I

    :cond_0
    const/16 v1, 0x13

    new-array v4, v2, [I

    .line 3
    iget v0, v0, Lk0/bt;->t:I

    aput v0, v4, v3

    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v1, v2, [I

    .line 4
    iget-object v2, p0, Lk0/bt$f;->b:Lk0/bt;

    iget v2, v2, Lk0/bt;->t:I

    rem-int/lit8 v2, v2, 0x2

    aput v2, v1, v3

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    return-void
.end method
