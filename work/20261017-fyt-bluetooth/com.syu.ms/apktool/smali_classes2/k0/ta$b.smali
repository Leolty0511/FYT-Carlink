.class public Lk0/ta$b;
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
    iput-object p1, p0, Lk0/ta$b;->a:Lk0/ta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->W1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lo1/u;->z()I

    :cond_0
    const/4 v0, 0x0

    .line 3
    sput v0, Lu0/b;->W1:I

    return-void
.end method
