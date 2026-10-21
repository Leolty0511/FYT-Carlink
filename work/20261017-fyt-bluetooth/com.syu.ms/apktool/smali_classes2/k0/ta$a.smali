.class public Lk0/ta$a;
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
    iput-object p1, p0, Lk0/ta$a;->a:Lk0/ta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lk0/ta;->x:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_2

    const/16 v0, 0xd

    const/4 v2, 0x6

    if-ne v1, v0, :cond_0

    .line 2
    sget v0, Lk0/ta;->u:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    .line 3
    invoke-static {}, Lk0/ta;->c3()V

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    :cond_1
    :goto_0
    sget v0, Lu0/b;->D:I

    sput v0, Lk0/ta;->x:I

    :cond_2
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
