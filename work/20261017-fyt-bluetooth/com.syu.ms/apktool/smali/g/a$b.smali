.class public Lg/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/a;


# direct methods
.method public constructor <init>(Lg/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/a$b;->a:Lg/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-boolean v0, Lu0/b;->a4:Z

    if-eqz v0, :cond_1

    .line 2
    sget v0, Lu0/b;->n4:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sget v0, Lu0/b;->o:I

    if-ne v0, v2, :cond_0

    .line 3
    sput v2, Lu0/d;->j:I

    .line 4
    invoke-static {v1}, Lu0/d;->C(I)V

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Lu0/b;->n4:I

    if-ne v0, v2, :cond_1

    sget v0, Lu0/d;->j:I

    if-ne v0, v2, :cond_1

    .line 6
    invoke-static {v2}, Lu0/d;->C(I)V

    .line 7
    sput v1, Lu0/d;->j:I

    :cond_1
    :goto_0
    return-void
.end method
