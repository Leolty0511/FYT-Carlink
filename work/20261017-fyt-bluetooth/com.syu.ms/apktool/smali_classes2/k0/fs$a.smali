.class public Lk0/fs$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/fs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/fs;


# direct methods
.method public constructor <init>(Lk0/fs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/fs$a;->a:Lk0/fs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lk0/fs;->s:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    .line 2
    sget v1, Lk0/fs;->s:I

    if-ne v1, v0, :cond_0

    .line 3
    invoke-static {}, Lk0/fs;->a3()I

    move-result v0

    invoke-static {v0}, Ly0/h;->u0(I)V

    .line 4
    :cond_0
    sget v0, Lu0/b;->D:I

    sput v0, Lk0/fs;->s:I

    :cond_1
    return-void
.end method
