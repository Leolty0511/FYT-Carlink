.class public final synthetic Lcom/google/common/graph/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/common/graph/AbstractBaseGraph$2;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/graph/AbstractBaseGraph$2;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/graph/a;->b:I

    iput-object p1, p0, Lcom/google/common/graph/a;->c:Lcom/google/common/graph/AbstractBaseGraph$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/graph/a;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/graph/a;->c:Lcom/google/common/graph/AbstractBaseGraph$2;

    invoke-static {v0, p1}, Lcom/google/common/graph/AbstractBaseGraph$2;->b(Lcom/google/common/graph/AbstractBaseGraph$2;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/graph/a;->c:Lcom/google/common/graph/AbstractBaseGraph$2;

    invoke-static {v0, p1}, Lcom/google/common/graph/AbstractBaseGraph$2;->a(Lcom/google/common/graph/AbstractBaseGraph$2;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1

    :goto_0
    iget-object v0, p0, Lcom/google/common/graph/a;->c:Lcom/google/common/graph/AbstractBaseGraph$2;

    invoke-static {v0, p1}, Lcom/google/common/graph/AbstractBaseGraph$2;->c(Lcom/google/common/graph/AbstractBaseGraph$2;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
