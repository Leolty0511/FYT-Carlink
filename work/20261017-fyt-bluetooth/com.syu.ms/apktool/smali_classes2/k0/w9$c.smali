.class public Lk0/w9$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/w9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/w9;


# direct methods
.method public constructor <init>(Lk0/w9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/w9$c;->a:Lk0/w9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/w9$c;->a:Lk0/w9;

    const/4 v1, 0x0

    iput v1, v0, Lk0/w9;->n:I

    .line 2
    iput v1, v0, Lk0/w9;->o:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x20
        0x3
    .end array-data
.end method
