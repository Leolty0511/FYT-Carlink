.class final Landroid/text/TextUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/CharSequence;
    .locals 3

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return-object v1

    .line 4
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bogus span encoding "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :pswitch_0
    new-instance v1, Landroid/text/style/LocaleSpan;

    invoke-direct {v1, p1}, Landroid/text/style/LocaleSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :pswitch_1
    new-instance v1, Landroid/text/style/EasyEditSpan;

    invoke-direct {v1, p1}, Landroid/text/style/EasyEditSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :pswitch_2
    new-instance v1, Landroid/text/style/SuggestionRangeSpan;

    invoke-direct {v1, p1}, Landroid/text/style/SuggestionRangeSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :pswitch_3
    new-instance v1, Landroid/text/style/SpellCheckSpan;

    invoke-direct {v1, p1}, Landroid/text/style/SpellCheckSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :pswitch_4
    new-instance v1, Landroid/text/style/SuggestionSpan;

    invoke-direct {v1, p1}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :pswitch_5
    new-instance v1, Landroid/text/Annotation;

    invoke-direct {v1, p1}, Landroid/text/Annotation;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :pswitch_6
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, p1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :pswitch_7
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :pswitch_8
    new-instance v1, Landroid/text/style/SubscriptSpan;

    invoke-direct {v1, p1}, Landroid/text/style/SubscriptSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :pswitch_9
    new-instance v1, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v1, p1}, Landroid/text/style/SuperscriptSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :pswitch_a
    new-instance v1, Landroid/text/style/TypefaceSpan;

    invoke-direct {v1, p1}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 18
    :pswitch_b
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 19
    :pswitch_c
    new-instance v1, Landroid/text/style/URLSpan;

    invoke-direct {v1, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 20
    :pswitch_d
    new-instance v1, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-direct {v1, p1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 21
    :pswitch_e
    new-instance v1, Landroid/text/style/QuoteSpan;

    invoke-direct {v1, p1}, Landroid/text/style/QuoteSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 22
    :pswitch_f
    new-instance v1, Landroid/text/style/BulletSpan;

    invoke-direct {v1, p1}, Landroid/text/style/BulletSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 23
    :pswitch_10
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, p1}, Landroid/text/style/StyleSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 24
    :pswitch_11
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1, p1}, Landroid/text/style/UnderlineSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 25
    :pswitch_12
    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1, p1}, Landroid/text/style/StrikethroughSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 26
    :pswitch_13
    new-instance v1, Landroid/text/style/ScaleXSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ScaleXSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 27
    :pswitch_14
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v1, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 28
    :pswitch_15
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 29
    :pswitch_16
    new-instance v1, Landroid/text/style/AlignmentSpan$Standard;

    invoke-direct {v1, p1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/os/Parcel;)V

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$1;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 2
    new-array p1, p1, [Ljava/lang/CharSequence;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$1;->newArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
