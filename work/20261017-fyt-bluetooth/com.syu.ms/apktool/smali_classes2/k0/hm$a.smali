.class public Lk0/hm$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hm;


# direct methods
.method public constructor <init>(Lk0/hm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hm$a;->a:Lk0/hm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/hm$a;->a:Lk0/hm;

    iget v0, v0, Lk0/hm;->j:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/hm$a;->a:Lk0/hm;

    sget v1, Lu0/b;->D:I

    iput v1, v0, Lk0/hm;->j:I

    :cond_1
    return-void

    :array_0
    .array-data 4
        0xe3
        0x82
        0x1
        0xa
    .end array-data
.end method
