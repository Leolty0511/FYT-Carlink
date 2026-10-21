.class public Lk0/ye$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ye;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ye;


# direct methods
.method public constructor <init>(Lk0/ye;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ye$c;->a:Lk0/ye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ye$c;->a:Lk0/ye;

    iget v1, v0, Lk0/ye;->j:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 2
    iput v1, v0, Lk0/ye;->j:I

    .line 3
    :cond_0
    iget v0, v0, Lk0/ye;->j:I

    if-nez v0, :cond_1

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    iget-object v0, p0, Lk0/ye$c;->a:Lk0/ye;

    invoke-static {v0}, Lk0/ye;->a3(Lk0/ye;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0xe3
        0x84
        0x7
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
