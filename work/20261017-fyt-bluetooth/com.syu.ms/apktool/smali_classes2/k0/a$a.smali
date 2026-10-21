.class public Lk0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/a;


# direct methods
.method public constructor <init>(Lk0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/a$a;->a:Lk0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->J:I

    if-nez v0, :cond_0

    sget v0, Ll0/o;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget v0, Lk0/nt;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x1
        0xd9
    .end array-data
.end method
