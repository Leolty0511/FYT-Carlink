.class Landroid/mtp/MtpPropertyGroup$Property;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpPropertyGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Property"
.end annotation


# instance fields
.field code:I

.field column:I

.field final synthetic this$0:Landroid/mtp/MtpPropertyGroup;

.field type:I


# direct methods
.method public constructor <init>(Landroid/mtp/MtpPropertyGroup;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup$Property;->this$0:Landroid/mtp/MtpPropertyGroup;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 7
    .line 8
    iput p3, p0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    .line 9
    .line 10
    iput p4, p0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    .line 11
    .line 12
    return-void
.end method
