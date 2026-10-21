.class public Lk0/z5$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/z5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/z5;


# direct methods
.method public constructor <init>(Lk0/z5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/z5$e;->a:Lk0/z5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/z5$e;->a:Lk0/z5;

    iget v1, v0, Lk0/z5;->j:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    sub-int/2addr v1, v2

    .line 2
    iput v1, v0, Lk0/z5;->j:I

    .line 3
    :cond_0
    iget v1, v0, Lk0/z5;->j:I

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lk0/z5;->h:Z

    if-nez v1, :cond_1

    .line 4
    iput-boolean v2, v0, Lk0/z5;->h:Z

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x39
        0x1
        0x1
    .end array-data
.end method
