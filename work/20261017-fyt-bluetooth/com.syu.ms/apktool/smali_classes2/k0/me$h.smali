.class public Lk0/me$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/me;->S2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/me;


# direct methods
.method public constructor <init>(Lk0/me;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/me$h;->a:Lk0/me;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    return p2

    :cond_0
    const/16 p1, 0xfc

    .line 1
    sput p1, Lu0/b;->E0:I

    .line 2
    sget-object p1, Le/e;->b:Lo1/y;

    invoke-virtual {p1}, Lo1/y;->c()V

    return p2
.end method
