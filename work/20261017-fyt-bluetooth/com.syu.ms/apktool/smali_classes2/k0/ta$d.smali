.class public Lk0/ta$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ta;


# direct methods
.method public constructor <init>(Lk0/ta;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ta$d;->a:Lk0/ta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lk0/ta;->u:I

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    sget v0, Lu0/b;->j4:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lk0/ta$d;->a:Lk0/ta;

    iget-boolean v0, v0, Lk0/ta;->j:Z

    if-nez v0, :cond_0

    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object v0, p0, Lk0/ta$d;->a:Lk0/ta;

    iput-boolean v2, v0, Lk0/ta;->j:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/ta$d;->a:Lk0/ta;

    iget-boolean v0, v0, Lk0/ta;->j:Z

    if-ne v0, v2, :cond_1

    sget v0, Lu0/b;->j4:I

    if-nez v0, :cond_1

    sget v0, Lk0/ta;->u:I

    if-ne v0, v3, :cond_1

    new-array v0, v1, [I

    const/16 v1, 0xe3

    const/4 v4, 0x0

    aput v1, v0, v4

    aput v3, v0, v2

    const/4 v1, 0x2

    const/16 v2, 0xa1

    aput v2, v0, v1

    const/16 v1, 0x80

    aput v1, v0, v3

    const/4 v1, 0x4

    .line 5
    sget v2, Lk0/ta;->v:I

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x3
        0xa1
        0x80
        0x3
        0x0
    .end array-data
.end method
