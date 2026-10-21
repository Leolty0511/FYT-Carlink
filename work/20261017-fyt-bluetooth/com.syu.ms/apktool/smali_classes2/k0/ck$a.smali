.class public Lk0/ck$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ck;


# direct methods
.method public constructor <init>(Lk0/ck;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ck$a;->a:Lk0/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lk0/ck$a;->a:Lk0/ck;

    const/16 v1, -0x2c

    sget-object v2, Lu0/b;->i3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lk0/ck;->c3(Lk0/ck;BLjava/lang/String;)V

    :cond_1
    return-void
.end method
