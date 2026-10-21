.class public Lk0/kc$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/kc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/kc;


# direct methods
.method public constructor <init>(Lk0/kc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/kc$d;->a:Lk0/kc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x1
        0x26
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x4
        0x26
        0x0
        0x0
        0x0
    .end array-data
.end method
