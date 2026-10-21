.class public Lx0/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx0/e;


# direct methods
.method public constructor <init>(Lx0/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx0/e$c;->a:Lx0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lx0/e$c;->a:Lx0/e;

    sget v1, Lu0/b;->X1:I

    iget v2, v0, Lx0/e;->D:I

    sub-int v2, v1, v2

    iput v2, v0, Lx0/e;->C:I

    const/16 v3, 0x64

    const/16 v4, 0x46

    const/16 v5, 0x28

    const/16 v6, 0x14

    const/4 v7, 0x6

    const/16 v8, 0x37

    if-lez v2, :cond_5

    const/16 v9, 0xa

    if-ge v1, v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x5

    if-ge v1, v6, :cond_1

    if-lt v2, v9, :cond_c

    .line 2
    iput v8, v0, Lx0/e;->E:I

    goto :goto_0

    :cond_1
    if-ge v1, v5, :cond_2

    if-lt v2, v7, :cond_c

    .line 3
    iput v8, v0, Lx0/e;->E:I

    goto :goto_0

    :cond_2
    if-ge v1, v4, :cond_3

    const/4 v3, 0x7

    if-lt v2, v3, :cond_c

    .line 4
    iput v8, v0, Lx0/e;->E:I

    goto :goto_0

    :cond_3
    if-ge v1, v3, :cond_4

    const/16 v3, 0x8

    if-lt v2, v3, :cond_c

    .line 5
    iput v8, v0, Lx0/e;->E:I

    goto :goto_0

    :cond_4
    if-lt v2, v9, :cond_c

    .line 6
    iput v8, v0, Lx0/e;->E:I

    goto :goto_0

    :cond_5
    if-gez v2, :cond_b

    if-ge v1, v7, :cond_6

    goto :goto_0

    :cond_6
    if-ge v1, v6, :cond_7

    const/4 v3, -0x5

    if-gt v2, v3, :cond_c

    .line 7
    iput v8, v0, Lx0/e;->E:I

    goto :goto_0

    :cond_7
    if-ge v1, v5, :cond_8

    const/4 v3, -0x6

    if-gt v2, v3, :cond_c

    .line 8
    iput v8, v0, Lx0/e;->E:I

    goto :goto_0

    :cond_8
    if-ge v1, v4, :cond_9

    const/4 v3, -0x7

    if-gt v2, v3, :cond_c

    .line 9
    iput v8, v0, Lx0/e;->E:I

    goto :goto_0

    :cond_9
    const/4 v4, -0x8

    if-ge v1, v3, :cond_a

    if-gt v2, v4, :cond_c

    .line 10
    iput v8, v0, Lx0/e;->E:I

    goto :goto_0

    :cond_a
    if-gt v2, v4, :cond_c

    .line 11
    iput v8, v0, Lx0/e;->E:I

    goto :goto_0

    :cond_b
    const/4 v2, 0x0

    .line 12
    iput v2, v0, Lx0/e;->E:I

    .line 13
    :cond_c
    :goto_0
    iput v1, v0, Lx0/e;->D:I

    return-void
.end method
