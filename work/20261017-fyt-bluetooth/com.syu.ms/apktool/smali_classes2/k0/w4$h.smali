.class public Lk0/w4$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/w4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/w4;


# direct methods
.method public constructor <init>(Lk0/w4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/w4$h;->a:Lk0/w4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/w4$h;->a:Lk0/w4;

    iget v0, v0, Lk0/w4;->f0:I

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lk0/w4;->L3([B)V

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/w4$h;->a:Lk0/w4;

    iget v1, v0, Lk0/w4;->f0:I

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 4
    iput v1, v0, Lk0/w4;->f0:I

    :cond_1
    return-void

    :array_0
    .array-data 1
        0x2et
        -0x70t
        0x1t
        0x21t
        0x0t
    .end array-data
.end method
