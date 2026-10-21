.class public Lmodule/canbus/c$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/c;


# direct methods
.method public constructor <init>(Lmodule/canbus/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/c$j;->a:Lmodule/canbus/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/canbus/c$j;->a:Lmodule/canbus/c;

    iget v1, v0, Lmodule/canbus/c;->r0:I

    sget v2, Lu0/b;->D:I

    if-eq v1, v2, :cond_2

    .line 2
    iput v2, v0, Lmodule/canbus/c;->r0:I

    const/4 v0, 0x5

    if-eq v2, v0, :cond_1

    const/16 v1, 0xd

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    :goto_0
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_2
    :goto_1
    return-void

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0x1
        0x1
    .end array-data
.end method
