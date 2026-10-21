package com.google.android.projection.proto;

import android.app.m;
import com.android.internal.logging.nano.MetricsProto;
import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtocolMessageEnum;
import com.google.protobuf.RepeatedFieldBuilderV3;
import com.google.protobuf.SingleFieldBuilderV3;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class EnergyModel {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0012energy_model.proto\u0012\fenergy_model\"\u0090\u0004\n\u0016VehicleEnergyModelData\u0012/\n\fvehicle_info\u0018\u0001 \u0001(\u000b2\u0019.energy_model.VehicleInfo\u0012.\n\troad_load\u0018\u0002 \u0001(\u000b2\u001b.energy_model.RoadLoadForce\u00129\n\u0011drivetrain_losses\u0018\u0003 \u0001(\u000b2\u001e.energy_model.DrivetrainLosses\u00124\n\u000fmax_regen_power\u0018\u0004 \u0001(\u000b2\u001b.energy_model.MaxRegenPower\u00123\n\u000ebattery_losses\u0018\u0005 \u0001(\u000b2\u001b.energy_model.BatteryLosses\u0012:\n\u0017auxiliary_drain_at_time\u0018\u0006 \u0003(\u000b2\u0019.energy_model.DrainAtTime\u0012A\n\u0017auxiliary_drain_at_temp\u0018\u0007 \u0003(\u000b2 .energy_model.DrainAtTemperature\u00125\n\u000fcharging_curves\u0018\b \u0001(\u000b2\u001c.energy_model.ChargingCurves\u00129\n\u0015current_charging_time\u0018\t \u0001(\u000b2\u001a.energy_model.ChargingTime\">\n\u0012IntWithUncertainty\u0012\f\n\u0004mean\u0018\u0001 \u0001(\u0005\u0012\u001a\n\u0012standard_deviation\u0018\u0002 \u0001(\u0002\"@\n\u0014FloatWithUncertainty\u0012\f\n\u0004mean\u0018\u0001 \u0001(\u0002\u0012\u001a\n\u0012standard_deviation\u0018\u0002 \u0001(\u0002\"Ó\u0004\n\u000bVehicleInfo\u00128\n\u000emass_kilograms\u0018\u0002 \u0001(\u000b2 .energy_model.IntWithUncertainty\u0012:\n\u0010battery_level_wh\u0018\u0003 \u0001(\u000b2 .energy_model.IntWithUncertainty\u0012=\n\u0013battery_capacity_wh\u0018\u0004 \u0001(\u000b2 .energy_model.IntWithUncertainty\u00129\n\u000bhvac_status\u0018\u0005 \u0001(\u000e2$.energy_model.VehicleInfo.HvacStatus\u0012\u001d\n\u0015reference_air_density\u0018\u0006 \u0001(\u0002\u0012\u001d\n\u0015external_temp_celsius\u0018\u0007 \u0001(\u0002\u0012#\n\u0016peak_motor_power_watts\u0018\b \u0001(\rH\u0000\u0088\u0001\u0001\u0012(\n\u001bmaximum_charging_rate_watts\u0018\t \u0001(\rH\u0001\u0088\u0001\u0001\u0012\u001f\n\u0012heat_pump_equipped\u0018\n \u0001(\bH\u0002\u0088\u0001\u0001\"N\n\nHvacStatus\u0012\u0017\n\u0013UNKNOWN_HVAC_STATUS\u0010\u0000\u0012\u0013\n\u000fOFF_HVAC_STATUS\u0010\u0001\u0012\u0012\n\u000eON_HVAC_STATUS\u0010\u0002B\u0019\n\u0017_peak_motor_power_wattsB\u001e\n\u001c_maximum_charging_rate_wattsB\u0015\n\u0013_heat_pump_equippedJ\u0004\b\u0001\u0010\u0002\"°\u0001\n\rRoadLoadForce\u00124\n\bconstant\u0018\u0001 \u0001(\u000b2\".energy_model.FloatWithUncertainty\u00122\n\u0006linear\u0018\u0002 \u0001(\u000b2\".energy_model.FloatWithUncertainty\u00125\n\tquadratic\u0018\u0003 \u0001(\u000b2\".energy_model.FloatWithUncertainty\"°\u0001\n\rMaxRegenPower\u0012V\n!regeneration_rate_at_energy_level\u0018\u0001 \u0003(\u000b2+.energy_model.RegenerationRateAtEnergyLevel\u0012G\n\u0019regeneration_rate_at_time\u0018\u0002 \u0003(\u000b2$.energy_model.RegenerationRateAtTime\"Y\n\u001dRegenerationRateAtEnergyLevel\u0012\u0017\n\u000fenergy_level_wh\u0018\u0001 \u0001(\u0005\u0012\u001f\n\u0017regeneration_rate_watts\u0018\u0002 \u0001(\r\"T\n\u0016RegenerationRateAtTime\u0012\u0019\n\u0011relative_time_sec\u0018\u0001 \u0001(\u0005\u0012\u001f\n\u0017regeneration_rate_watts\u0018\u0002 \u0001(\r\"v\n\u0010DrivetrainLosses\u0012>\n\u0015drivetrain_power_loss\u0018\u0007 \u0003(\u000b2\u001f.energy_model.LossSeriesAtSpeedJ\u0004\b\u0001\u0010\u0002J\u0004\b\u0002\u0010\u0003J\u0004\b\u0003\u0010\u0004J\u0004\b\u0004\u0010\u0005J\u0004\b\u0005\u0010\u0006J\u0004\b\u0006\u0010\u0007\"f\n\u0011LossSeriesAtSpeed\u0012\u001f\n\u0017speed_meters_per_second\u0018\u0001 \u0001(\u0002\u00120\n\rloss_at_power\u0018\u0002 \u0003(\u000b2\u0019.energy_model.LossAtPower\"X\n\u000bLossAtPower\u0012\u0013\n\u000bpower_watts\u0018\u0001 \u0001(\u0011\u00124\n\nloss_watts\u0018\u0002 \u0001(\u000b2 .energy_model.IntWithUncertainty\"X\n\rBatteryLosses\u00125\n\u0012battery_power_loss\u0018\u0004 \u0003(\u000b2\u0019.energy_model.LossAtPowerJ\u0004\b\u0001\u0010\u0002J\u0004\b\u0002\u0010\u0003J\u0004\b\u0003\u0010\u0004\"e\n\u000bDrainAtTime\u0012\u0019\n\u0011relative_time_sec\u0018\u0001 \u0001(\u0005\u00125\n\u000bdrain_watts\u0018\u0003 \u0001(\u000b2 .energy_model.IntWithUncertaintyJ\u0004\b\u0002\u0010\u0003\"ï\u0001\n\u0012DrainAtTemperature\u0012\u0014\n\ftemp_celsius\u0018\u0001 \u0001(\u0002\u0012:\n\u0010hvac_drain_watts\u0018\u0002 \u0001(\u000b2 .energy_model.IntWithUncertainty\u0012J\n battery_conditioning_drain_watts\u0018\u0003 \u0001(\u000b2 .energy_model.IntWithUncertainty\u0012;\n\u0011total_drain_watts\u0018\u0004 \u0001(\u000b2 .energy_model.IntWithUncertainty\"Æ\u0002\n\u000eChargingCurves\u0012R\n\u0017charging_curve_at_power\u0018\u0001 \u0003(\u000b21.energy_model.ChargingCurves.ChargingCurveAtPower\u001aß\u0001\n\u0014ChargingCurveAtPower\u0012\u0019\n\u0011input_power_watts\u0018\u0001 \u0001(\u0005\u0012a\n\u0014time_to_full_battery\u0018\u0002 \u0003(\u000b2C.energy_model.ChargingCurves.ChargingCurveAtPower.TimeToFullBattery\u001aI\n\u0011TimeToFullBattery\u0012\u0019\n\u0011energy_to_full_wh\u0018\u0001 \u0001(\u0005\u0012\u0019\n\u0011time_to_full_secs\u0018\u0002 \u0001(\u0005\"n\n\fChargingTime\u0012\u001f\n\u0017target_battery_level_wh\u0018\u0001 \u0001(\u0005\u0012=\n\u0013time_remaining_secs\u0018\u0002 \u0001(\u000b2 .energy_model.IntWithUncertaintyB4\n#com.google.android.projection.protoB\u000bEnergyModelH\u0003b\u0006proto3"}, new Descriptors.FileDescriptor[0]);
    private static final Descriptors.Descriptor internal_static_energy_model_BatteryLosses_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_energy_model_BatteryLosses_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_TimeToFullBattery_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_TimeToFullBattery_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_energy_model_ChargingCurves_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_energy_model_ChargingCurves_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_energy_model_ChargingTime_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_energy_model_ChargingTime_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_energy_model_DrainAtTemperature_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_energy_model_DrainAtTemperature_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_energy_model_DrainAtTime_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_energy_model_DrainAtTime_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_energy_model_DrivetrainLosses_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_energy_model_DrivetrainLosses_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_energy_model_FloatWithUncertainty_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_energy_model_FloatWithUncertainty_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_energy_model_IntWithUncertainty_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_energy_model_IntWithUncertainty_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_energy_model_LossAtPower_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_energy_model_LossAtPower_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_energy_model_LossSeriesAtSpeed_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_energy_model_LossSeriesAtSpeed_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_energy_model_MaxRegenPower_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_energy_model_MaxRegenPower_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_energy_model_RegenerationRateAtEnergyLevel_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_energy_model_RegenerationRateAtEnergyLevel_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_energy_model_RegenerationRateAtTime_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_energy_model_RegenerationRateAtTime_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_energy_model_RoadLoadForce_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_energy_model_RoadLoadForce_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_energy_model_VehicleEnergyModelData_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_energy_model_VehicleEnergyModelData_fieldAccessorTable;
    private static final Descriptors.Descriptor internal_static_energy_model_VehicleInfo_descriptor;
    private static final GeneratedMessageV3.FieldAccessorTable internal_static_energy_model_VehicleInfo_fieldAccessorTable;

    public static final class BatteryLosses extends GeneratedMessageV3 implements BatteryLossesOrBuilder {
        public static final int BATTERY_POWER_LOSS_FIELD_NUMBER = 4;
        private static final BatteryLosses DEFAULT_INSTANCE = new BatteryLosses();
        private static final Parser<BatteryLosses> PARSER = new AbstractParser<BatteryLosses>() { // from class: com.google.android.projection.proto.EnergyModel.BatteryLosses.1
            @Override // com.google.protobuf.Parser
            public BatteryLosses parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new BatteryLosses(codedInputStream, extensionRegistryLite);
            }
        };
        private static final long serialVersionUID = 0;
        private List<LossAtPower> batteryPowerLoss_;
        private byte memoizedIsInitialized;

        public static BatteryLosses getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return EnergyModel.internal_static_energy_model_BatteryLosses_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static BatteryLosses parseDelimitedFrom(InputStream inputStream) {
            return (BatteryLosses) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static BatteryLosses parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<BatteryLosses> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof BatteryLosses)) {
                return super.equals(obj);
            }
            BatteryLosses batteryLosses = (BatteryLosses) obj;
            return getBatteryPowerLossList().equals(batteryLosses.getBatteryPowerLossList()) && this.unknownFields.equals(batteryLosses.unknownFields);
        }

        @Override // com.google.android.projection.proto.EnergyModel.BatteryLossesOrBuilder
        public LossAtPower getBatteryPowerLoss(int i2) {
            return this.batteryPowerLoss_.get(i2);
        }

        @Override // com.google.android.projection.proto.EnergyModel.BatteryLossesOrBuilder
        public int getBatteryPowerLossCount() {
            return this.batteryPowerLoss_.size();
        }

        @Override // com.google.android.projection.proto.EnergyModel.BatteryLossesOrBuilder
        public List<LossAtPower> getBatteryPowerLossList() {
            return this.batteryPowerLoss_;
        }

        @Override // com.google.android.projection.proto.EnergyModel.BatteryLossesOrBuilder
        public LossAtPowerOrBuilder getBatteryPowerLossOrBuilder(int i2) {
            return this.batteryPowerLoss_.get(i2);
        }

        @Override // com.google.android.projection.proto.EnergyModel.BatteryLossesOrBuilder
        public List<? extends LossAtPowerOrBuilder> getBatteryPowerLossOrBuilderList() {
            return this.batteryPowerLoss_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<BatteryLosses> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int iComputeMessageSize = 0;
            for (int i3 = 0; i3 < this.batteryPowerLoss_.size(); i3++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(4, this.batteryPowerLoss_.get(i3));
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeMessageSize;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY;
            if (getBatteryPowerLossCount() > 0) {
                iHashCode = m.D(iHashCode, 37, 4, 53) + getBatteryPowerLossList().hashCode();
            }
            int iHashCode2 = this.unknownFields.hashCode() + (iHashCode * 29);
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return EnergyModel.internal_static_energy_model_BatteryLosses_fieldAccessorTable.ensureFieldAccessorsInitialized(BatteryLosses.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new BatteryLosses();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            for (int i2 = 0; i2 < this.batteryPowerLoss_.size(); i2++) {
                codedOutputStream.writeMessage(4, this.batteryPowerLoss_.get(i2));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements BatteryLossesOrBuilder {
            private RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> batteryPowerLossBuilder_;
            private List<LossAtPower> batteryPowerLoss_;
            private int bitField0_;

            private void ensureBatteryPowerLossIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.batteryPowerLoss_ = new ArrayList(this.batteryPowerLoss_);
                    this.bitField0_ |= 1;
                }
            }

            private RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> getBatteryPowerLossFieldBuilder() {
                if (this.batteryPowerLossBuilder_ == null) {
                    this.batteryPowerLossBuilder_ = new RepeatedFieldBuilderV3<>(this.batteryPowerLoss_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.batteryPowerLoss_ = null;
                }
                return this.batteryPowerLossBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return EnergyModel.internal_static_energy_model_BatteryLosses_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getBatteryPowerLossFieldBuilder();
                }
            }

            public Builder addAllBatteryPowerLoss(Iterable<? extends LossAtPower> iterable) {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.batteryPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureBatteryPowerLossIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.batteryPowerLoss_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addBatteryPowerLoss(LossAtPower lossAtPower) {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.batteryPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    lossAtPower.getClass();
                    ensureBatteryPowerLossIsMutable();
                    this.batteryPowerLoss_.add(lossAtPower);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(lossAtPower);
                }
                return this;
            }

            public LossAtPower.Builder addBatteryPowerLossBuilder() {
                return (LossAtPower.Builder) getBatteryPowerLossFieldBuilder().addBuilder(LossAtPower.getDefaultInstance());
            }

            public Builder clearBatteryPowerLoss() {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.batteryPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.batteryPowerLoss_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.android.projection.proto.EnergyModel.BatteryLossesOrBuilder
            public LossAtPower getBatteryPowerLoss(int i2) {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.batteryPowerLossBuilder_;
                return repeatedFieldBuilderV3 == null ? this.batteryPowerLoss_.get(i2) : (LossAtPower) repeatedFieldBuilderV3.getMessage(i2);
            }

            public LossAtPower.Builder getBatteryPowerLossBuilder(int i2) {
                return (LossAtPower.Builder) getBatteryPowerLossFieldBuilder().getBuilder(i2);
            }

            public List<LossAtPower.Builder> getBatteryPowerLossBuilderList() {
                return getBatteryPowerLossFieldBuilder().getBuilderList();
            }

            @Override // com.google.android.projection.proto.EnergyModel.BatteryLossesOrBuilder
            public int getBatteryPowerLossCount() {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.batteryPowerLossBuilder_;
                return repeatedFieldBuilderV3 == null ? this.batteryPowerLoss_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.google.android.projection.proto.EnergyModel.BatteryLossesOrBuilder
            public List<LossAtPower> getBatteryPowerLossList() {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.batteryPowerLossBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.batteryPowerLoss_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.google.android.projection.proto.EnergyModel.BatteryLossesOrBuilder
            public LossAtPowerOrBuilder getBatteryPowerLossOrBuilder(int i2) {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.batteryPowerLossBuilder_;
                return repeatedFieldBuilderV3 == null ? this.batteryPowerLoss_.get(i2) : (LossAtPowerOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i2);
            }

            @Override // com.google.android.projection.proto.EnergyModel.BatteryLossesOrBuilder
            public List<? extends LossAtPowerOrBuilder> getBatteryPowerLossOrBuilderList() {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.batteryPowerLossBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.batteryPowerLoss_);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return EnergyModel.internal_static_energy_model_BatteryLosses_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return EnergyModel.internal_static_energy_model_BatteryLosses_fieldAccessorTable.ensureFieldAccessorsInitialized(BatteryLosses.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder removeBatteryPowerLoss(int i2) {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.batteryPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureBatteryPowerLossIsMutable();
                    this.batteryPowerLoss_.remove(i2);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i2);
                }
                return this;
            }

            public Builder setBatteryPowerLoss(int i2, LossAtPower lossAtPower) {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.batteryPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    lossAtPower.getClass();
                    ensureBatteryPowerLossIsMutable();
                    this.batteryPowerLoss_.set(i2, lossAtPower);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i2, lossAtPower);
                }
                return this;
            }

            private Builder() {
                this.batteryPowerLoss_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public BatteryLosses build() {
                BatteryLosses batteryLossesBuildPartial = buildPartial();
                if (batteryLossesBuildPartial.isInitialized()) {
                    return batteryLossesBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) batteryLossesBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public BatteryLosses buildPartial() {
                BatteryLosses batteryLosses = new BatteryLosses(this);
                int i2 = this.bitField0_;
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.batteryPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i2 & 1) != 0) {
                        this.batteryPowerLoss_ = Collections.unmodifiableList(this.batteryPowerLoss_);
                        this.bitField0_ &= -2;
                    }
                    batteryLosses.batteryPowerLoss_ = this.batteryPowerLoss_;
                } else {
                    batteryLosses.batteryPowerLoss_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return batteryLosses;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public BatteryLosses getDefaultInstanceForType() {
                return BatteryLosses.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            public LossAtPower.Builder addBatteryPowerLossBuilder(int i2) {
                return (LossAtPower.Builder) getBatteryPowerLossFieldBuilder().addBuilder(i2, LossAtPower.getDefaultInstance());
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.batteryPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.batteryPowerLoss_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.batteryPowerLoss_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addBatteryPowerLoss(int i2, LossAtPower lossAtPower) {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.batteryPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    lossAtPower.getClass();
                    ensureBatteryPowerLossIsMutable();
                    this.batteryPowerLoss_.add(i2, lossAtPower);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i2, lossAtPower);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof BatteryLosses) {
                    return mergeFrom((BatteryLosses) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setBatteryPowerLoss(int i2, LossAtPower.Builder builder) {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.batteryPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureBatteryPowerLossIsMutable();
                    this.batteryPowerLoss_.set(i2, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i2, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(BatteryLosses batteryLosses) {
                if (batteryLosses == BatteryLosses.getDefaultInstance()) {
                    return this;
                }
                if (this.batteryPowerLossBuilder_ == null) {
                    if (!batteryLosses.batteryPowerLoss_.isEmpty()) {
                        if (this.batteryPowerLoss_.isEmpty()) {
                            this.batteryPowerLoss_ = batteryLosses.batteryPowerLoss_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureBatteryPowerLossIsMutable();
                            this.batteryPowerLoss_.addAll(batteryLosses.batteryPowerLoss_);
                        }
                        onChanged();
                    }
                } else if (!batteryLosses.batteryPowerLoss_.isEmpty()) {
                    if (this.batteryPowerLossBuilder_.isEmpty()) {
                        this.batteryPowerLossBuilder_.dispose();
                        this.batteryPowerLossBuilder_ = null;
                        this.batteryPowerLoss_ = batteryLosses.batteryPowerLoss_;
                        this.bitField0_ &= -2;
                        this.batteryPowerLossBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getBatteryPowerLossFieldBuilder() : null;
                    } else {
                        this.batteryPowerLossBuilder_.addAllMessages(batteryLosses.batteryPowerLoss_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) batteryLosses).unknownFields);
                onChanged();
                return this;
            }

            public Builder addBatteryPowerLoss(LossAtPower.Builder builder) {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.batteryPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureBatteryPowerLossIsMutable();
                    this.batteryPowerLoss_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addBatteryPowerLoss(int i2, LossAtPower.Builder builder) {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.batteryPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureBatteryPowerLossIsMutable();
                    this.batteryPowerLoss_.add(i2, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i2, builder.build());
                }
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                BatteryLosses batteryLosses = null;
                try {
                    try {
                        BatteryLosses batteryLosses2 = (BatteryLosses) BatteryLosses.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (batteryLosses2 != null) {
                            mergeFrom(batteryLosses2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        BatteryLosses batteryLosses3 = (BatteryLosses) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            batteryLosses = batteryLosses3;
                            if (batteryLosses != null) {
                                mergeFrom(batteryLosses);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (batteryLosses != null) {
                        mergeFrom(batteryLosses);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(BatteryLosses batteryLosses) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(batteryLosses);
        }

        public static BatteryLosses parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private BatteryLosses(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static BatteryLosses parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (BatteryLosses) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static BatteryLosses parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public BatteryLosses getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static BatteryLosses parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private BatteryLosses() {
            this.memoizedIsInitialized = (byte) -1;
            this.batteryPowerLoss_ = Collections.emptyList();
        }

        public static BatteryLosses parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static BatteryLosses parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static BatteryLosses parseFrom(InputStream inputStream) {
            return (BatteryLosses) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private BatteryLosses(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            boolean z3 = false;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag != 34) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                if (!(z3 & true)) {
                                    this.batteryPowerLoss_ = new ArrayList();
                                    z3 |= true;
                                }
                                this.batteryPowerLoss_.add((LossAtPower) codedInputStream.readMessage(LossAtPower.parser(), extensionRegistryLite));
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.batteryPowerLoss_ = Collections.unmodifiableList(this.batteryPowerLoss_);
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z3 & true) {
                this.batteryPowerLoss_ = Collections.unmodifiableList(this.batteryPowerLoss_);
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static BatteryLosses parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (BatteryLosses) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static BatteryLosses parseFrom(CodedInputStream codedInputStream) {
            return (BatteryLosses) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static BatteryLosses parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (BatteryLosses) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface BatteryLossesOrBuilder extends MessageOrBuilder {
        LossAtPower getBatteryPowerLoss(int i2);

        int getBatteryPowerLossCount();

        List<LossAtPower> getBatteryPowerLossList();

        LossAtPowerOrBuilder getBatteryPowerLossOrBuilder(int i2);

        List<? extends LossAtPowerOrBuilder> getBatteryPowerLossOrBuilderList();
    }

    public static final class ChargingCurves extends GeneratedMessageV3 implements ChargingCurvesOrBuilder {
        public static final int CHARGING_CURVE_AT_POWER_FIELD_NUMBER = 1;
        private static final ChargingCurves DEFAULT_INSTANCE = new ChargingCurves();
        private static final Parser<ChargingCurves> PARSER = new AbstractParser<ChargingCurves>() { // from class: com.google.android.projection.proto.EnergyModel.ChargingCurves.1
            @Override // com.google.protobuf.Parser
            public ChargingCurves parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new ChargingCurves(codedInputStream, extensionRegistryLite);
            }
        };
        private static final long serialVersionUID = 0;
        private List<ChargingCurveAtPower> chargingCurveAtPower_;
        private byte memoizedIsInitialized;

        public static final class ChargingCurveAtPower extends GeneratedMessageV3 implements ChargingCurveAtPowerOrBuilder {
            public static final int INPUT_POWER_WATTS_FIELD_NUMBER = 1;
            public static final int TIME_TO_FULL_BATTERY_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private int inputPowerWatts_;
            private byte memoizedIsInitialized;
            private List<TimeToFullBattery> timeToFullBattery_;
            private static final ChargingCurveAtPower DEFAULT_INSTANCE = new ChargingCurveAtPower();
            private static final Parser<ChargingCurveAtPower> PARSER = new AbstractParser<ChargingCurveAtPower>() { // from class: com.google.android.projection.proto.EnergyModel.ChargingCurves.ChargingCurveAtPower.1
                @Override // com.google.protobuf.Parser
                public ChargingCurveAtPower parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                    return new ChargingCurveAtPower(codedInputStream, extensionRegistryLite);
                }
            };

            public static final class TimeToFullBattery extends GeneratedMessageV3 implements TimeToFullBatteryOrBuilder {
                public static final int ENERGY_TO_FULL_WH_FIELD_NUMBER = 1;
                public static final int TIME_TO_FULL_SECS_FIELD_NUMBER = 2;
                private static final long serialVersionUID = 0;
                private int energyToFullWh_;
                private byte memoizedIsInitialized;
                private int timeToFullSecs_;
                private static final TimeToFullBattery DEFAULT_INSTANCE = new TimeToFullBattery();
                private static final Parser<TimeToFullBattery> PARSER = new AbstractParser<TimeToFullBattery>() { // from class: com.google.android.projection.proto.EnergyModel.ChargingCurves.ChargingCurveAtPower.TimeToFullBattery.1
                    @Override // com.google.protobuf.Parser
                    public TimeToFullBattery parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                        return new TimeToFullBattery(codedInputStream, extensionRegistryLite);
                    }
                };

                public static TimeToFullBattery getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return EnergyModel.internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_TimeToFullBattery_descriptor;
                }

                public static Builder newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static TimeToFullBattery parseDelimitedFrom(InputStream inputStream) {
                    return (TimeToFullBattery) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static TimeToFullBattery parseFrom(ByteBuffer byteBuffer) {
                    return PARSER.parseFrom(byteBuffer);
                }

                public static Parser<TimeToFullBattery> parser() {
                    return PARSER;
                }

                @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
                public boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof TimeToFullBattery)) {
                        return super.equals(obj);
                    }
                    TimeToFullBattery timeToFullBattery = (TimeToFullBattery) obj;
                    return getEnergyToFullWh() == timeToFullBattery.getEnergyToFullWh() && getTimeToFullSecs() == timeToFullBattery.getTimeToFullSecs() && this.unknownFields.equals(timeToFullBattery.unknownFields);
                }

                @Override // com.google.android.projection.proto.EnergyModel.ChargingCurves.ChargingCurveAtPower.TimeToFullBatteryOrBuilder
                public int getEnergyToFullWh() {
                    return this.energyToFullWh_;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
                public Parser<TimeToFullBattery> getParserForType() {
                    return PARSER;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
                public int getSerializedSize() {
                    int i2 = this.memoizedSize;
                    if (i2 != -1) {
                        return i2;
                    }
                    int i3 = this.energyToFullWh_;
                    int iComputeInt32Size = i3 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i3) : 0;
                    int i4 = this.timeToFullSecs_;
                    if (i4 != 0) {
                        iComputeInt32Size += CodedOutputStream.computeInt32Size(2, i4);
                    }
                    int serializedSize = this.unknownFields.getSerializedSize() + iComputeInt32Size;
                    this.memoizedSize = serializedSize;
                    return serializedSize;
                }

                @Override // com.google.android.projection.proto.EnergyModel.ChargingCurves.ChargingCurveAtPower.TimeToFullBatteryOrBuilder
                public int getTimeToFullSecs() {
                    return this.timeToFullSecs_;
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
                public final UnknownFieldSet getUnknownFields() {
                    return this.unknownFields;
                }

                @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
                public int hashCode() {
                    int i2 = this.memoizedHashCode;
                    if (i2 != 0) {
                        return i2;
                    }
                    int iHashCode = this.unknownFields.hashCode() + ((getTimeToFullSecs() + ((((getEnergyToFullWh() + ((((getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY) * 37) + 1) * 53)) * 37) + 2) * 53)) * 29);
                    this.memoizedHashCode = iHashCode;
                    return iHashCode;
                }

                @Override // com.google.protobuf.GeneratedMessageV3
                public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return EnergyModel.internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_TimeToFullBattery_fieldAccessorTable.ensureFieldAccessorsInitialized(TimeToFullBattery.class, Builder.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    byte b2 = this.memoizedIsInitialized;
                    if (b2 == 1) {
                        return true;
                    }
                    if (b2 == 0) {
                        return false;
                    }
                    this.memoizedIsInitialized = (byte) 1;
                    return true;
                }

                @Override // com.google.protobuf.GeneratedMessageV3
                public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
                    return new TimeToFullBattery();
                }

                @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
                public void writeTo(CodedOutputStream codedOutputStream) {
                    int i2 = this.energyToFullWh_;
                    if (i2 != 0) {
                        codedOutputStream.writeInt32(1, i2);
                    }
                    int i3 = this.timeToFullSecs_;
                    if (i3 != 0) {
                        codedOutputStream.writeInt32(2, i3);
                    }
                    this.unknownFields.writeTo(codedOutputStream);
                }

                public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements TimeToFullBatteryOrBuilder {
                    private int energyToFullWh_;
                    private int timeToFullSecs_;

                    public static final Descriptors.Descriptor getDescriptor() {
                        return EnergyModel.internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_TimeToFullBattery_descriptor;
                    }

                    private void maybeForceBuilderInitialization() {
                        boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                    }

                    public Builder clearEnergyToFullWh() {
                        this.energyToFullWh_ = 0;
                        onChanged();
                        return this;
                    }

                    public Builder clearTimeToFullSecs() {
                        this.timeToFullSecs_ = 0;
                        onChanged();
                        return this;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                    public Descriptors.Descriptor getDescriptorForType() {
                        return EnergyModel.internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_TimeToFullBattery_descriptor;
                    }

                    @Override // com.google.android.projection.proto.EnergyModel.ChargingCurves.ChargingCurveAtPower.TimeToFullBatteryOrBuilder
                    public int getEnergyToFullWh() {
                        return this.energyToFullWh_;
                    }

                    @Override // com.google.android.projection.proto.EnergyModel.ChargingCurves.ChargingCurveAtPower.TimeToFullBatteryOrBuilder
                    public int getTimeToFullSecs() {
                        return this.timeToFullSecs_;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.Builder
                    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                        return EnergyModel.internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_TimeToFullBattery_fieldAccessorTable.ensureFieldAccessorsInitialized(TimeToFullBattery.class, Builder.class);
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
                    public final boolean isInitialized() {
                        return true;
                    }

                    public Builder setEnergyToFullWh(int i2) {
                        this.energyToFullWh_ = i2;
                        onChanged();
                        return this;
                    }

                    public Builder setTimeToFullSecs(int i2) {
                        this.timeToFullSecs_ = i2;
                        onChanged();
                        return this;
                    }

                    private Builder() {
                        maybeForceBuilderInitialization();
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
                    public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                        return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                    }

                    @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                    public TimeToFullBattery build() {
                        TimeToFullBattery timeToFullBatteryBuildPartial = buildPartial();
                        if (timeToFullBatteryBuildPartial.isInitialized()) {
                            return timeToFullBatteryBuildPartial;
                        }
                        throw AbstractMessage.Builder.newUninitializedMessageException((Message) timeToFullBatteryBuildPartial);
                    }

                    @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                    public TimeToFullBattery buildPartial() {
                        TimeToFullBattery timeToFullBattery = new TimeToFullBattery(this);
                        timeToFullBattery.energyToFullWh_ = this.energyToFullWh_;
                        timeToFullBattery.timeToFullSecs_ = this.timeToFullSecs_;
                        onBuilt();
                        return timeToFullBattery;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
                    public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                        return (Builder) super.clearField(fieldDescriptor);
                    }

                    @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                    public TimeToFullBattery getDefaultInstanceForType() {
                        return TimeToFullBattery.getDefaultInstance();
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
                    public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                        return (Builder) super.setField(fieldDescriptor, obj);
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
                    public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                        return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
                    public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                        return (Builder) super.setUnknownFields(unknownFieldSet);
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                    public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                        return (Builder) super.clearOneof(oneofDescriptor);
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                    public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                        return (Builder) super.mergeUnknownFields(unknownFieldSet);
                    }

                    private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                        super(builderParent);
                        maybeForceBuilderInitialization();
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                    public Builder clear() {
                        super.clear();
                        this.energyToFullWh_ = 0;
                        this.timeToFullSecs_ = 0;
                        return this;
                    }

                    @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
                    /* JADX INFO: renamed from: clone */
                    public Builder mo58clone() {
                        return (Builder) super.mo58clone();
                    }

                    @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                    public Builder mergeFrom(Message message) {
                        if (message instanceof TimeToFullBattery) {
                            return mergeFrom((TimeToFullBattery) message);
                        }
                        super.mergeFrom(message);
                        return this;
                    }

                    public Builder mergeFrom(TimeToFullBattery timeToFullBattery) {
                        if (timeToFullBattery == TimeToFullBattery.getDefaultInstance()) {
                            return this;
                        }
                        if (timeToFullBattery.getEnergyToFullWh() != 0) {
                            setEnergyToFullWh(timeToFullBattery.getEnergyToFullWh());
                        }
                        if (timeToFullBattery.getTimeToFullSecs() != 0) {
                            setTimeToFullSecs(timeToFullBattery.getTimeToFullSecs());
                        }
                        mergeUnknownFields(((GeneratedMessageV3) timeToFullBattery).unknownFields);
                        onChanged();
                        return this;
                    }

                    /* JADX WARN: Code duplicated, block: B:16:0x0023  */
                    @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                    public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                        TimeToFullBattery timeToFullBattery = null;
                        try {
                            try {
                                TimeToFullBattery timeToFullBattery2 = (TimeToFullBattery) TimeToFullBattery.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                                if (timeToFullBattery2 != null) {
                                    mergeFrom(timeToFullBattery2);
                                }
                                return this;
                            } catch (InvalidProtocolBufferException e2) {
                                TimeToFullBattery timeToFullBattery3 = (TimeToFullBattery) e2.getUnfinishedMessage();
                                try {
                                    throw e2.unwrapIOException();
                                } catch (Throwable th) {
                                    th = th;
                                    timeToFullBattery = timeToFullBattery3;
                                    if (timeToFullBattery != null) {
                                        mergeFrom(timeToFullBattery);
                                    }
                                    throw th;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (timeToFullBattery != null) {
                                mergeFrom(timeToFullBattery);
                            }
                            throw th;
                        }
                    }
                }

                public static Builder newBuilder(TimeToFullBattery timeToFullBattery) {
                    return DEFAULT_INSTANCE.toBuilder().mergeFrom(timeToFullBattery);
                }

                public static TimeToFullBattery parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
                    return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
                }

                private TimeToFullBattery(GeneratedMessageV3.Builder<?> builder) {
                    super(builder);
                    this.memoizedIsInitialized = (byte) -1;
                }

                public static TimeToFullBattery parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
                    return (TimeToFullBattery) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static TimeToFullBattery parseFrom(ByteString byteString) {
                    return PARSER.parseFrom(byteString);
                }

                @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public TimeToFullBattery getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }

                @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
                public Builder toBuilder() {
                    return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                }

                public static TimeToFullBattery parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
                    return PARSER.parseFrom(byteString, extensionRegistryLite);
                }

                @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
                public Builder newBuilderForType() {
                    return newBuilder();
                }

                private TimeToFullBattery() {
                    this.memoizedIsInitialized = (byte) -1;
                }

                public static TimeToFullBattery parseFrom(byte[] bArr) {
                    return PARSER.parseFrom(bArr);
                }

                @Override // com.google.protobuf.GeneratedMessageV3
                public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
                    return new Builder(builderParent);
                }

                public static TimeToFullBattery parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
                    return PARSER.parseFrom(bArr, extensionRegistryLite);
                }

                private TimeToFullBattery(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                    this();
                    extensionRegistryLite.getClass();
                    UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
                    boolean z2 = false;
                    while (!z2) {
                        try {
                            try {
                                try {
                                    int tag = codedInputStream.readTag();
                                    if (tag != 0) {
                                        if (tag == 8) {
                                            this.energyToFullWh_ = codedInputStream.readInt32();
                                        } else if (tag != 16) {
                                            if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                            }
                                        } else {
                                            this.timeToFullSecs_ = codedInputStream.readInt32();
                                        }
                                    }
                                    z2 = true;
                                } catch (IOException e2) {
                                    throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                                }
                            } catch (InvalidProtocolBufferException e3) {
                                throw e3.setUnfinishedMessage(this);
                            }
                        } catch (Throwable th) {
                            this.unknownFields = builderNewBuilder.build();
                            makeExtensionsImmutable();
                            throw th;
                        }
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                }

                public static TimeToFullBattery parseFrom(InputStream inputStream) {
                    return (TimeToFullBattery) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                }

                public static TimeToFullBattery parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
                    return (TimeToFullBattery) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static TimeToFullBattery parseFrom(CodedInputStream codedInputStream) {
                    return (TimeToFullBattery) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
                }

                public static TimeToFullBattery parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                    return (TimeToFullBattery) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
                }
            }

            public interface TimeToFullBatteryOrBuilder extends MessageOrBuilder {
                int getEnergyToFullWh();

                int getTimeToFullSecs();
            }

            public static ChargingCurveAtPower getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return EnergyModel.internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static ChargingCurveAtPower parseDelimitedFrom(InputStream inputStream) {
                return (ChargingCurveAtPower) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static ChargingCurveAtPower parseFrom(ByteBuffer byteBuffer) {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Parser<ChargingCurveAtPower> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof ChargingCurveAtPower)) {
                    return super.equals(obj);
                }
                ChargingCurveAtPower chargingCurveAtPower = (ChargingCurveAtPower) obj;
                return getInputPowerWatts() == chargingCurveAtPower.getInputPowerWatts() && getTimeToFullBatteryList().equals(chargingCurveAtPower.getTimeToFullBatteryList()) && this.unknownFields.equals(chargingCurveAtPower.unknownFields);
            }

            @Override // com.google.android.projection.proto.EnergyModel.ChargingCurves.ChargingCurveAtPowerOrBuilder
            public int getInputPowerWatts() {
                return this.inputPowerWatts_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Parser<ChargingCurveAtPower> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public int getSerializedSize() {
                int i2 = this.memoizedSize;
                if (i2 != -1) {
                    return i2;
                }
                int i3 = this.inputPowerWatts_;
                int iComputeInt32Size = i3 != 0 ? CodedOutputStream.computeInt32Size(1, i3) + 0 : 0;
                for (int i4 = 0; i4 < this.timeToFullBattery_.size(); i4++) {
                    iComputeInt32Size += CodedOutputStream.computeMessageSize(2, this.timeToFullBattery_.get(i4));
                }
                int serializedSize = this.unknownFields.getSerializedSize() + iComputeInt32Size;
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.android.projection.proto.EnergyModel.ChargingCurves.ChargingCurveAtPowerOrBuilder
            public TimeToFullBattery getTimeToFullBattery(int i2) {
                return this.timeToFullBattery_.get(i2);
            }

            @Override // com.google.android.projection.proto.EnergyModel.ChargingCurves.ChargingCurveAtPowerOrBuilder
            public int getTimeToFullBatteryCount() {
                return this.timeToFullBattery_.size();
            }

            @Override // com.google.android.projection.proto.EnergyModel.ChargingCurves.ChargingCurveAtPowerOrBuilder
            public List<TimeToFullBattery> getTimeToFullBatteryList() {
                return this.timeToFullBattery_;
            }

            @Override // com.google.android.projection.proto.EnergyModel.ChargingCurves.ChargingCurveAtPowerOrBuilder
            public TimeToFullBatteryOrBuilder getTimeToFullBatteryOrBuilder(int i2) {
                return this.timeToFullBattery_.get(i2);
            }

            @Override // com.google.android.projection.proto.EnergyModel.ChargingCurves.ChargingCurveAtPowerOrBuilder
            public List<? extends TimeToFullBatteryOrBuilder> getTimeToFullBatteryOrBuilderList() {
                return this.timeToFullBattery_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
            public int hashCode() {
                int i2 = this.memoizedHashCode;
                if (i2 != 0) {
                    return i2;
                }
                int inputPowerWatts = getInputPowerWatts() + ((((getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY) * 37) + 1) * 53);
                if (getTimeToFullBatteryCount() > 0) {
                    inputPowerWatts = getTimeToFullBatteryList().hashCode() + m.D(inputPowerWatts, 37, 2, 53);
                }
                int iHashCode = this.unknownFields.hashCode() + (inputPowerWatts * 29);
                this.memoizedHashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return EnergyModel.internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_fieldAccessorTable.ensureFieldAccessorsInitialized(ChargingCurveAtPower.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                byte b2 = this.memoizedIsInitialized;
                if (b2 == 1) {
                    return true;
                }
                if (b2 == 0) {
                    return false;
                }
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
                return new ChargingCurveAtPower();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) {
                int i2 = this.inputPowerWatts_;
                if (i2 != 0) {
                    codedOutputStream.writeInt32(1, i2);
                }
                for (int i3 = 0; i3 < this.timeToFullBattery_.size(); i3++) {
                    codedOutputStream.writeMessage(2, this.timeToFullBattery_.get(i3));
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ChargingCurveAtPowerOrBuilder {
                private int bitField0_;
                private int inputPowerWatts_;
                private RepeatedFieldBuilderV3<TimeToFullBattery, TimeToFullBattery.Builder, TimeToFullBatteryOrBuilder> timeToFullBatteryBuilder_;
                private List<TimeToFullBattery> timeToFullBattery_;

                private void ensureTimeToFullBatteryIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.timeToFullBattery_ = new ArrayList(this.timeToFullBattery_);
                        this.bitField0_ |= 1;
                    }
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return EnergyModel.internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_descriptor;
                }

                private RepeatedFieldBuilderV3<TimeToFullBattery, TimeToFullBattery.Builder, TimeToFullBatteryOrBuilder> getTimeToFullBatteryFieldBuilder() {
                    if (this.timeToFullBatteryBuilder_ == null) {
                        this.timeToFullBatteryBuilder_ = new RepeatedFieldBuilderV3<>(this.timeToFullBattery_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                        this.timeToFullBattery_ = null;
                    }
                    return this.timeToFullBatteryBuilder_;
                }

                private void maybeForceBuilderInitialization() {
                    if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                        getTimeToFullBatteryFieldBuilder();
                    }
                }

                public Builder addAllTimeToFullBattery(Iterable<? extends TimeToFullBattery> iterable) {
                    RepeatedFieldBuilderV3<TimeToFullBattery, TimeToFullBattery.Builder, TimeToFullBatteryOrBuilder> repeatedFieldBuilderV3 = this.timeToFullBatteryBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureTimeToFullBatteryIsMutable();
                        AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.timeToFullBattery_);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addAllMessages(iterable);
                    }
                    return this;
                }

                public Builder addTimeToFullBattery(TimeToFullBattery timeToFullBattery) {
                    RepeatedFieldBuilderV3<TimeToFullBattery, TimeToFullBattery.Builder, TimeToFullBatteryOrBuilder> repeatedFieldBuilderV3 = this.timeToFullBatteryBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        timeToFullBattery.getClass();
                        ensureTimeToFullBatteryIsMutable();
                        this.timeToFullBattery_.add(timeToFullBattery);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(timeToFullBattery);
                    }
                    return this;
                }

                public TimeToFullBattery.Builder addTimeToFullBatteryBuilder() {
                    return (TimeToFullBattery.Builder) getTimeToFullBatteryFieldBuilder().addBuilder(TimeToFullBattery.getDefaultInstance());
                }

                public Builder clearInputPowerWatts() {
                    this.inputPowerWatts_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearTimeToFullBattery() {
                    RepeatedFieldBuilderV3<TimeToFullBattery, TimeToFullBattery.Builder, TimeToFullBatteryOrBuilder> repeatedFieldBuilderV3 = this.timeToFullBatteryBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        this.timeToFullBattery_ = Collections.emptyList();
                        this.bitField0_ &= -2;
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.clear();
                    }
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return EnergyModel.internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_descriptor;
                }

                @Override // com.google.android.projection.proto.EnergyModel.ChargingCurves.ChargingCurveAtPowerOrBuilder
                public int getInputPowerWatts() {
                    return this.inputPowerWatts_;
                }

                @Override // com.google.android.projection.proto.EnergyModel.ChargingCurves.ChargingCurveAtPowerOrBuilder
                public TimeToFullBattery getTimeToFullBattery(int i2) {
                    RepeatedFieldBuilderV3<TimeToFullBattery, TimeToFullBattery.Builder, TimeToFullBatteryOrBuilder> repeatedFieldBuilderV3 = this.timeToFullBatteryBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.timeToFullBattery_.get(i2) : (TimeToFullBattery) repeatedFieldBuilderV3.getMessage(i2);
                }

                public TimeToFullBattery.Builder getTimeToFullBatteryBuilder(int i2) {
                    return (TimeToFullBattery.Builder) getTimeToFullBatteryFieldBuilder().getBuilder(i2);
                }

                public List<TimeToFullBattery.Builder> getTimeToFullBatteryBuilderList() {
                    return getTimeToFullBatteryFieldBuilder().getBuilderList();
                }

                @Override // com.google.android.projection.proto.EnergyModel.ChargingCurves.ChargingCurveAtPowerOrBuilder
                public int getTimeToFullBatteryCount() {
                    RepeatedFieldBuilderV3<TimeToFullBattery, TimeToFullBattery.Builder, TimeToFullBatteryOrBuilder> repeatedFieldBuilderV3 = this.timeToFullBatteryBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.timeToFullBattery_.size() : repeatedFieldBuilderV3.getCount();
                }

                @Override // com.google.android.projection.proto.EnergyModel.ChargingCurves.ChargingCurveAtPowerOrBuilder
                public List<TimeToFullBattery> getTimeToFullBatteryList() {
                    RepeatedFieldBuilderV3<TimeToFullBattery, TimeToFullBattery.Builder, TimeToFullBatteryOrBuilder> repeatedFieldBuilderV3 = this.timeToFullBatteryBuilder_;
                    return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.timeToFullBattery_) : repeatedFieldBuilderV3.getMessageList();
                }

                @Override // com.google.android.projection.proto.EnergyModel.ChargingCurves.ChargingCurveAtPowerOrBuilder
                public TimeToFullBatteryOrBuilder getTimeToFullBatteryOrBuilder(int i2) {
                    RepeatedFieldBuilderV3<TimeToFullBattery, TimeToFullBattery.Builder, TimeToFullBatteryOrBuilder> repeatedFieldBuilderV3 = this.timeToFullBatteryBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.timeToFullBattery_.get(i2) : (TimeToFullBatteryOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i2);
                }

                @Override // com.google.android.projection.proto.EnergyModel.ChargingCurves.ChargingCurveAtPowerOrBuilder
                public List<? extends TimeToFullBatteryOrBuilder> getTimeToFullBatteryOrBuilderList() {
                    RepeatedFieldBuilderV3<TimeToFullBattery, TimeToFullBattery.Builder, TimeToFullBatteryOrBuilder> repeatedFieldBuilderV3 = this.timeToFullBatteryBuilder_;
                    return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.timeToFullBattery_);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Builder
                public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return EnergyModel.internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_fieldAccessorTable.ensureFieldAccessorsInitialized(ChargingCurveAtPower.class, Builder.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public Builder removeTimeToFullBattery(int i2) {
                    RepeatedFieldBuilderV3<TimeToFullBattery, TimeToFullBattery.Builder, TimeToFullBatteryOrBuilder> repeatedFieldBuilderV3 = this.timeToFullBatteryBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureTimeToFullBatteryIsMutable();
                        this.timeToFullBattery_.remove(i2);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.remove(i2);
                    }
                    return this;
                }

                public Builder setInputPowerWatts(int i2) {
                    this.inputPowerWatts_ = i2;
                    onChanged();
                    return this;
                }

                public Builder setTimeToFullBattery(int i2, TimeToFullBattery timeToFullBattery) {
                    RepeatedFieldBuilderV3<TimeToFullBattery, TimeToFullBattery.Builder, TimeToFullBatteryOrBuilder> repeatedFieldBuilderV3 = this.timeToFullBatteryBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        timeToFullBattery.getClass();
                        ensureTimeToFullBatteryIsMutable();
                        this.timeToFullBattery_.set(i2, timeToFullBattery);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.setMessage(i2, timeToFullBattery);
                    }
                    return this;
                }

                private Builder() {
                    this.timeToFullBattery_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public ChargingCurveAtPower build() {
                    ChargingCurveAtPower chargingCurveAtPowerBuildPartial = buildPartial();
                    if (chargingCurveAtPowerBuildPartial.isInitialized()) {
                        return chargingCurveAtPowerBuildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) chargingCurveAtPowerBuildPartial);
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public ChargingCurveAtPower buildPartial() {
                    ChargingCurveAtPower chargingCurveAtPower = new ChargingCurveAtPower(this);
                    chargingCurveAtPower.inputPowerWatts_ = this.inputPowerWatts_;
                    RepeatedFieldBuilderV3<TimeToFullBattery, TimeToFullBattery.Builder, TimeToFullBatteryOrBuilder> repeatedFieldBuilderV3 = this.timeToFullBatteryBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        if ((this.bitField0_ & 1) != 0) {
                            this.timeToFullBattery_ = Collections.unmodifiableList(this.timeToFullBattery_);
                            this.bitField0_ &= -2;
                        }
                        chargingCurveAtPower.timeToFullBattery_ = this.timeToFullBattery_;
                    } else {
                        chargingCurveAtPower.timeToFullBattery_ = repeatedFieldBuilderV3.build();
                    }
                    onBuilt();
                    return chargingCurveAtPower;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
                public ChargingCurveAtPower getDefaultInstanceForType() {
                    return ChargingCurveAtPower.getDefaultInstance();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
                public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.setField(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
                public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                    return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
                public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                    return (Builder) super.setUnknownFields(unknownFieldSet);
                }

                public TimeToFullBattery.Builder addTimeToFullBatteryBuilder(int i2) {
                    return (TimeToFullBattery.Builder) getTimeToFullBatteryFieldBuilder().addBuilder(i2, TimeToFullBattery.getDefaultInstance());
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                    return (Builder) super.clearOneof(oneofDescriptor);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                    return (Builder) super.mergeUnknownFields(unknownFieldSet);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.inputPowerWatts_ = 0;
                    RepeatedFieldBuilderV3<TimeToFullBattery, TimeToFullBattery.Builder, TimeToFullBatteryOrBuilder> repeatedFieldBuilderV3 = this.timeToFullBatteryBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        this.timeToFullBattery_ = Collections.emptyList();
                        this.bitField0_ &= -2;
                    } else {
                        repeatedFieldBuilderV3.clear();
                    }
                    return this;
                }

                private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                    super(builderParent);
                    this.timeToFullBattery_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                public Builder addTimeToFullBattery(int i2, TimeToFullBattery timeToFullBattery) {
                    RepeatedFieldBuilderV3<TimeToFullBattery, TimeToFullBattery.Builder, TimeToFullBatteryOrBuilder> repeatedFieldBuilderV3 = this.timeToFullBatteryBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        timeToFullBattery.getClass();
                        ensureTimeToFullBatteryIsMutable();
                        this.timeToFullBattery_.add(i2, timeToFullBattery);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(i2, timeToFullBattery);
                    }
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
                /* JADX INFO: renamed from: clone */
                public Builder mo58clone() {
                    return (Builder) super.mo58clone();
                }

                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof ChargingCurveAtPower) {
                        return mergeFrom((ChargingCurveAtPower) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder setTimeToFullBattery(int i2, TimeToFullBattery.Builder builder) {
                    RepeatedFieldBuilderV3<TimeToFullBattery, TimeToFullBattery.Builder, TimeToFullBatteryOrBuilder> repeatedFieldBuilderV3 = this.timeToFullBatteryBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureTimeToFullBatteryIsMutable();
                        this.timeToFullBattery_.set(i2, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.setMessage(i2, builder.build());
                    }
                    return this;
                }

                public Builder mergeFrom(ChargingCurveAtPower chargingCurveAtPower) {
                    if (chargingCurveAtPower == ChargingCurveAtPower.getDefaultInstance()) {
                        return this;
                    }
                    if (chargingCurveAtPower.getInputPowerWatts() != 0) {
                        setInputPowerWatts(chargingCurveAtPower.getInputPowerWatts());
                    }
                    if (this.timeToFullBatteryBuilder_ == null) {
                        if (!chargingCurveAtPower.timeToFullBattery_.isEmpty()) {
                            if (this.timeToFullBattery_.isEmpty()) {
                                this.timeToFullBattery_ = chargingCurveAtPower.timeToFullBattery_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureTimeToFullBatteryIsMutable();
                                this.timeToFullBattery_.addAll(chargingCurveAtPower.timeToFullBattery_);
                            }
                            onChanged();
                        }
                    } else if (!chargingCurveAtPower.timeToFullBattery_.isEmpty()) {
                        if (this.timeToFullBatteryBuilder_.isEmpty()) {
                            this.timeToFullBatteryBuilder_.dispose();
                            this.timeToFullBatteryBuilder_ = null;
                            this.timeToFullBattery_ = chargingCurveAtPower.timeToFullBattery_;
                            this.bitField0_ &= -2;
                            this.timeToFullBatteryBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getTimeToFullBatteryFieldBuilder() : null;
                        } else {
                            this.timeToFullBatteryBuilder_.addAllMessages(chargingCurveAtPower.timeToFullBattery_);
                        }
                    }
                    mergeUnknownFields(((GeneratedMessageV3) chargingCurveAtPower).unknownFields);
                    onChanged();
                    return this;
                }

                public Builder addTimeToFullBattery(TimeToFullBattery.Builder builder) {
                    RepeatedFieldBuilderV3<TimeToFullBattery, TimeToFullBattery.Builder, TimeToFullBatteryOrBuilder> repeatedFieldBuilderV3 = this.timeToFullBatteryBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureTimeToFullBatteryIsMutable();
                        this.timeToFullBattery_.add(builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(builder.build());
                    }
                    return this;
                }

                public Builder addTimeToFullBattery(int i2, TimeToFullBattery.Builder builder) {
                    RepeatedFieldBuilderV3<TimeToFullBattery, TimeToFullBattery.Builder, TimeToFullBatteryOrBuilder> repeatedFieldBuilderV3 = this.timeToFullBatteryBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureTimeToFullBatteryIsMutable();
                        this.timeToFullBattery_.add(i2, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(i2, builder.build());
                    }
                    return this;
                }

                /* JADX WARN: Code duplicated, block: B:16:0x0023  */
                @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
                public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                    ChargingCurveAtPower chargingCurveAtPower = null;
                    try {
                        try {
                            ChargingCurveAtPower chargingCurveAtPower2 = (ChargingCurveAtPower) ChargingCurveAtPower.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                            if (chargingCurveAtPower2 != null) {
                                mergeFrom(chargingCurveAtPower2);
                            }
                            return this;
                        } catch (InvalidProtocolBufferException e2) {
                            ChargingCurveAtPower chargingCurveAtPower3 = (ChargingCurveAtPower) e2.getUnfinishedMessage();
                            try {
                                throw e2.unwrapIOException();
                            } catch (Throwable th) {
                                th = th;
                                chargingCurveAtPower = chargingCurveAtPower3;
                                if (chargingCurveAtPower != null) {
                                    mergeFrom(chargingCurveAtPower);
                                }
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (chargingCurveAtPower != null) {
                            mergeFrom(chargingCurveAtPower);
                        }
                        throw th;
                    }
                }
            }

            public static Builder newBuilder(ChargingCurveAtPower chargingCurveAtPower) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(chargingCurveAtPower);
            }

            public static ChargingCurveAtPower parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            private ChargingCurveAtPower(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static ChargingCurveAtPower parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
                return (ChargingCurveAtPower) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static ChargingCurveAtPower parseFrom(ByteString byteString) {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ChargingCurveAtPower getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static ChargingCurveAtPower parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private ChargingCurveAtPower() {
                this.memoizedIsInitialized = (byte) -1;
                this.timeToFullBattery_ = Collections.emptyList();
            }

            public static ChargingCurveAtPower parseFrom(byte[] bArr) {
                return PARSER.parseFrom(bArr);
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
                return new Builder(builderParent);
            }

            public static ChargingCurveAtPower parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static ChargingCurveAtPower parseFrom(InputStream inputStream) {
                return (ChargingCurveAtPower) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            private ChargingCurveAtPower(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                this();
                extensionRegistryLite.getClass();
                UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
                boolean z2 = false;
                boolean z3 = false;
                while (!z2) {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.inputPowerWatts_ = codedInputStream.readInt32();
                                } else if (tag != 18) {
                                    if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                    }
                                } else {
                                    if (!(z3 & true)) {
                                        this.timeToFullBattery_ = new ArrayList();
                                        z3 |= true;
                                    }
                                    this.timeToFullBattery_.add((TimeToFullBattery) codedInputStream.readMessage(TimeToFullBattery.parser(), extensionRegistryLite));
                                }
                            }
                            z2 = true;
                        } catch (InvalidProtocolBufferException e2) {
                            throw e2.setUnfinishedMessage(this);
                        } catch (IOException e3) {
                            throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                        }
                    } catch (Throwable th) {
                        if (z3 & true) {
                            this.timeToFullBattery_ = Collections.unmodifiableList(this.timeToFullBattery_);
                        }
                        this.unknownFields = builderNewBuilder.build();
                        makeExtensionsImmutable();
                        throw th;
                    }
                }
                if (z3 & true) {
                    this.timeToFullBattery_ = Collections.unmodifiableList(this.timeToFullBattery_);
                }
                this.unknownFields = builderNewBuilder.build();
                makeExtensionsImmutable();
            }

            public static ChargingCurveAtPower parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
                return (ChargingCurveAtPower) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static ChargingCurveAtPower parseFrom(CodedInputStream codedInputStream) {
                return (ChargingCurveAtPower) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static ChargingCurveAtPower parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return (ChargingCurveAtPower) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }
        }

        public interface ChargingCurveAtPowerOrBuilder extends MessageOrBuilder {
            int getInputPowerWatts();

            ChargingCurveAtPower.TimeToFullBattery getTimeToFullBattery(int i2);

            int getTimeToFullBatteryCount();

            List<ChargingCurveAtPower.TimeToFullBattery> getTimeToFullBatteryList();

            ChargingCurveAtPower.TimeToFullBatteryOrBuilder getTimeToFullBatteryOrBuilder(int i2);

            List<? extends ChargingCurveAtPower.TimeToFullBatteryOrBuilder> getTimeToFullBatteryOrBuilderList();
        }

        public static ChargingCurves getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return EnergyModel.internal_static_energy_model_ChargingCurves_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ChargingCurves parseDelimitedFrom(InputStream inputStream) {
            return (ChargingCurves) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ChargingCurves parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ChargingCurves> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ChargingCurves)) {
                return super.equals(obj);
            }
            ChargingCurves chargingCurves = (ChargingCurves) obj;
            return getChargingCurveAtPowerList().equals(chargingCurves.getChargingCurveAtPowerList()) && this.unknownFields.equals(chargingCurves.unknownFields);
        }

        @Override // com.google.android.projection.proto.EnergyModel.ChargingCurvesOrBuilder
        public ChargingCurveAtPower getChargingCurveAtPower(int i2) {
            return this.chargingCurveAtPower_.get(i2);
        }

        @Override // com.google.android.projection.proto.EnergyModel.ChargingCurvesOrBuilder
        public int getChargingCurveAtPowerCount() {
            return this.chargingCurveAtPower_.size();
        }

        @Override // com.google.android.projection.proto.EnergyModel.ChargingCurvesOrBuilder
        public List<ChargingCurveAtPower> getChargingCurveAtPowerList() {
            return this.chargingCurveAtPower_;
        }

        @Override // com.google.android.projection.proto.EnergyModel.ChargingCurvesOrBuilder
        public ChargingCurveAtPowerOrBuilder getChargingCurveAtPowerOrBuilder(int i2) {
            return this.chargingCurveAtPower_.get(i2);
        }

        @Override // com.google.android.projection.proto.EnergyModel.ChargingCurvesOrBuilder
        public List<? extends ChargingCurveAtPowerOrBuilder> getChargingCurveAtPowerOrBuilderList() {
            return this.chargingCurveAtPower_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ChargingCurves> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int iComputeMessageSize = 0;
            for (int i3 = 0; i3 < this.chargingCurveAtPower_.size(); i3++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.chargingCurveAtPower_.get(i3));
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeMessageSize;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY;
            if (getChargingCurveAtPowerCount() > 0) {
                iHashCode = m.D(iHashCode, 37, 1, 53) + getChargingCurveAtPowerList().hashCode();
            }
            int iHashCode2 = this.unknownFields.hashCode() + (iHashCode * 29);
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return EnergyModel.internal_static_energy_model_ChargingCurves_fieldAccessorTable.ensureFieldAccessorsInitialized(ChargingCurves.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new ChargingCurves();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            for (int i2 = 0; i2 < this.chargingCurveAtPower_.size(); i2++) {
                codedOutputStream.writeMessage(1, this.chargingCurveAtPower_.get(i2));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ChargingCurvesOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilderV3<ChargingCurveAtPower, ChargingCurveAtPower.Builder, ChargingCurveAtPowerOrBuilder> chargingCurveAtPowerBuilder_;
            private List<ChargingCurveAtPower> chargingCurveAtPower_;

            private void ensureChargingCurveAtPowerIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.chargingCurveAtPower_ = new ArrayList(this.chargingCurveAtPower_);
                    this.bitField0_ |= 1;
                }
            }

            private RepeatedFieldBuilderV3<ChargingCurveAtPower, ChargingCurveAtPower.Builder, ChargingCurveAtPowerOrBuilder> getChargingCurveAtPowerFieldBuilder() {
                if (this.chargingCurveAtPowerBuilder_ == null) {
                    this.chargingCurveAtPowerBuilder_ = new RepeatedFieldBuilderV3<>(this.chargingCurveAtPower_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.chargingCurveAtPower_ = null;
                }
                return this.chargingCurveAtPowerBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return EnergyModel.internal_static_energy_model_ChargingCurves_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getChargingCurveAtPowerFieldBuilder();
                }
            }

            public Builder addAllChargingCurveAtPower(Iterable<? extends ChargingCurveAtPower> iterable) {
                RepeatedFieldBuilderV3<ChargingCurveAtPower, ChargingCurveAtPower.Builder, ChargingCurveAtPowerOrBuilder> repeatedFieldBuilderV3 = this.chargingCurveAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureChargingCurveAtPowerIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.chargingCurveAtPower_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addChargingCurveAtPower(ChargingCurveAtPower chargingCurveAtPower) {
                RepeatedFieldBuilderV3<ChargingCurveAtPower, ChargingCurveAtPower.Builder, ChargingCurveAtPowerOrBuilder> repeatedFieldBuilderV3 = this.chargingCurveAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    chargingCurveAtPower.getClass();
                    ensureChargingCurveAtPowerIsMutable();
                    this.chargingCurveAtPower_.add(chargingCurveAtPower);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(chargingCurveAtPower);
                }
                return this;
            }

            public ChargingCurveAtPower.Builder addChargingCurveAtPowerBuilder() {
                return (ChargingCurveAtPower.Builder) getChargingCurveAtPowerFieldBuilder().addBuilder(ChargingCurveAtPower.getDefaultInstance());
            }

            public Builder clearChargingCurveAtPower() {
                RepeatedFieldBuilderV3<ChargingCurveAtPower, ChargingCurveAtPower.Builder, ChargingCurveAtPowerOrBuilder> repeatedFieldBuilderV3 = this.chargingCurveAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.chargingCurveAtPower_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.android.projection.proto.EnergyModel.ChargingCurvesOrBuilder
            public ChargingCurveAtPower getChargingCurveAtPower(int i2) {
                RepeatedFieldBuilderV3<ChargingCurveAtPower, ChargingCurveAtPower.Builder, ChargingCurveAtPowerOrBuilder> repeatedFieldBuilderV3 = this.chargingCurveAtPowerBuilder_;
                return repeatedFieldBuilderV3 == null ? this.chargingCurveAtPower_.get(i2) : (ChargingCurveAtPower) repeatedFieldBuilderV3.getMessage(i2);
            }

            public ChargingCurveAtPower.Builder getChargingCurveAtPowerBuilder(int i2) {
                return (ChargingCurveAtPower.Builder) getChargingCurveAtPowerFieldBuilder().getBuilder(i2);
            }

            public List<ChargingCurveAtPower.Builder> getChargingCurveAtPowerBuilderList() {
                return getChargingCurveAtPowerFieldBuilder().getBuilderList();
            }

            @Override // com.google.android.projection.proto.EnergyModel.ChargingCurvesOrBuilder
            public int getChargingCurveAtPowerCount() {
                RepeatedFieldBuilderV3<ChargingCurveAtPower, ChargingCurveAtPower.Builder, ChargingCurveAtPowerOrBuilder> repeatedFieldBuilderV3 = this.chargingCurveAtPowerBuilder_;
                return repeatedFieldBuilderV3 == null ? this.chargingCurveAtPower_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.google.android.projection.proto.EnergyModel.ChargingCurvesOrBuilder
            public List<ChargingCurveAtPower> getChargingCurveAtPowerList() {
                RepeatedFieldBuilderV3<ChargingCurveAtPower, ChargingCurveAtPower.Builder, ChargingCurveAtPowerOrBuilder> repeatedFieldBuilderV3 = this.chargingCurveAtPowerBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.chargingCurveAtPower_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.google.android.projection.proto.EnergyModel.ChargingCurvesOrBuilder
            public ChargingCurveAtPowerOrBuilder getChargingCurveAtPowerOrBuilder(int i2) {
                RepeatedFieldBuilderV3<ChargingCurveAtPower, ChargingCurveAtPower.Builder, ChargingCurveAtPowerOrBuilder> repeatedFieldBuilderV3 = this.chargingCurveAtPowerBuilder_;
                return repeatedFieldBuilderV3 == null ? this.chargingCurveAtPower_.get(i2) : (ChargingCurveAtPowerOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i2);
            }

            @Override // com.google.android.projection.proto.EnergyModel.ChargingCurvesOrBuilder
            public List<? extends ChargingCurveAtPowerOrBuilder> getChargingCurveAtPowerOrBuilderList() {
                RepeatedFieldBuilderV3<ChargingCurveAtPower, ChargingCurveAtPower.Builder, ChargingCurveAtPowerOrBuilder> repeatedFieldBuilderV3 = this.chargingCurveAtPowerBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.chargingCurveAtPower_);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return EnergyModel.internal_static_energy_model_ChargingCurves_descriptor;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return EnergyModel.internal_static_energy_model_ChargingCurves_fieldAccessorTable.ensureFieldAccessorsInitialized(ChargingCurves.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder removeChargingCurveAtPower(int i2) {
                RepeatedFieldBuilderV3<ChargingCurveAtPower, ChargingCurveAtPower.Builder, ChargingCurveAtPowerOrBuilder> repeatedFieldBuilderV3 = this.chargingCurveAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureChargingCurveAtPowerIsMutable();
                    this.chargingCurveAtPower_.remove(i2);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i2);
                }
                return this;
            }

            public Builder setChargingCurveAtPower(int i2, ChargingCurveAtPower chargingCurveAtPower) {
                RepeatedFieldBuilderV3<ChargingCurveAtPower, ChargingCurveAtPower.Builder, ChargingCurveAtPowerOrBuilder> repeatedFieldBuilderV3 = this.chargingCurveAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    chargingCurveAtPower.getClass();
                    ensureChargingCurveAtPowerIsMutable();
                    this.chargingCurveAtPower_.set(i2, chargingCurveAtPower);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i2, chargingCurveAtPower);
                }
                return this;
            }

            private Builder() {
                this.chargingCurveAtPower_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ChargingCurves build() {
                ChargingCurves chargingCurvesBuildPartial = buildPartial();
                if (chargingCurvesBuildPartial.isInitialized()) {
                    return chargingCurvesBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) chargingCurvesBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ChargingCurves buildPartial() {
                ChargingCurves chargingCurves = new ChargingCurves(this);
                int i2 = this.bitField0_;
                RepeatedFieldBuilderV3<ChargingCurveAtPower, ChargingCurveAtPower.Builder, ChargingCurveAtPowerOrBuilder> repeatedFieldBuilderV3 = this.chargingCurveAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i2 & 1) != 0) {
                        this.chargingCurveAtPower_ = Collections.unmodifiableList(this.chargingCurveAtPower_);
                        this.bitField0_ &= -2;
                    }
                    chargingCurves.chargingCurveAtPower_ = this.chargingCurveAtPower_;
                } else {
                    chargingCurves.chargingCurveAtPower_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return chargingCurves;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ChargingCurves getDefaultInstanceForType() {
                return ChargingCurves.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            public ChargingCurveAtPower.Builder addChargingCurveAtPowerBuilder(int i2) {
                return (ChargingCurveAtPower.Builder) getChargingCurveAtPowerFieldBuilder().addBuilder(i2, ChargingCurveAtPower.getDefaultInstance());
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                RepeatedFieldBuilderV3<ChargingCurveAtPower, ChargingCurveAtPower.Builder, ChargingCurveAtPowerOrBuilder> repeatedFieldBuilderV3 = this.chargingCurveAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.chargingCurveAtPower_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.chargingCurveAtPower_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addChargingCurveAtPower(int i2, ChargingCurveAtPower chargingCurveAtPower) {
                RepeatedFieldBuilderV3<ChargingCurveAtPower, ChargingCurveAtPower.Builder, ChargingCurveAtPowerOrBuilder> repeatedFieldBuilderV3 = this.chargingCurveAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    chargingCurveAtPower.getClass();
                    ensureChargingCurveAtPowerIsMutable();
                    this.chargingCurveAtPower_.add(i2, chargingCurveAtPower);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i2, chargingCurveAtPower);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ChargingCurves) {
                    return mergeFrom((ChargingCurves) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setChargingCurveAtPower(int i2, ChargingCurveAtPower.Builder builder) {
                RepeatedFieldBuilderV3<ChargingCurveAtPower, ChargingCurveAtPower.Builder, ChargingCurveAtPowerOrBuilder> repeatedFieldBuilderV3 = this.chargingCurveAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureChargingCurveAtPowerIsMutable();
                    this.chargingCurveAtPower_.set(i2, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i2, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(ChargingCurves chargingCurves) {
                if (chargingCurves == ChargingCurves.getDefaultInstance()) {
                    return this;
                }
                if (this.chargingCurveAtPowerBuilder_ == null) {
                    if (!chargingCurves.chargingCurveAtPower_.isEmpty()) {
                        if (this.chargingCurveAtPower_.isEmpty()) {
                            this.chargingCurveAtPower_ = chargingCurves.chargingCurveAtPower_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureChargingCurveAtPowerIsMutable();
                            this.chargingCurveAtPower_.addAll(chargingCurves.chargingCurveAtPower_);
                        }
                        onChanged();
                    }
                } else if (!chargingCurves.chargingCurveAtPower_.isEmpty()) {
                    if (this.chargingCurveAtPowerBuilder_.isEmpty()) {
                        this.chargingCurveAtPowerBuilder_.dispose();
                        this.chargingCurveAtPowerBuilder_ = null;
                        this.chargingCurveAtPower_ = chargingCurves.chargingCurveAtPower_;
                        this.bitField0_ &= -2;
                        this.chargingCurveAtPowerBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getChargingCurveAtPowerFieldBuilder() : null;
                    } else {
                        this.chargingCurveAtPowerBuilder_.addAllMessages(chargingCurves.chargingCurveAtPower_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) chargingCurves).unknownFields);
                onChanged();
                return this;
            }

            public Builder addChargingCurveAtPower(ChargingCurveAtPower.Builder builder) {
                RepeatedFieldBuilderV3<ChargingCurveAtPower, ChargingCurveAtPower.Builder, ChargingCurveAtPowerOrBuilder> repeatedFieldBuilderV3 = this.chargingCurveAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureChargingCurveAtPowerIsMutable();
                    this.chargingCurveAtPower_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addChargingCurveAtPower(int i2, ChargingCurveAtPower.Builder builder) {
                RepeatedFieldBuilderV3<ChargingCurveAtPower, ChargingCurveAtPower.Builder, ChargingCurveAtPowerOrBuilder> repeatedFieldBuilderV3 = this.chargingCurveAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureChargingCurveAtPowerIsMutable();
                    this.chargingCurveAtPower_.add(i2, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i2, builder.build());
                }
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                ChargingCurves chargingCurves = null;
                try {
                    try {
                        ChargingCurves chargingCurves2 = (ChargingCurves) ChargingCurves.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (chargingCurves2 != null) {
                            mergeFrom(chargingCurves2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        ChargingCurves chargingCurves3 = (ChargingCurves) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            chargingCurves = chargingCurves3;
                            if (chargingCurves != null) {
                                mergeFrom(chargingCurves);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (chargingCurves != null) {
                        mergeFrom(chargingCurves);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(ChargingCurves chargingCurves) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(chargingCurves);
        }

        public static ChargingCurves parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private ChargingCurves(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ChargingCurves parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (ChargingCurves) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ChargingCurves parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ChargingCurves getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static ChargingCurves parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ChargingCurves() {
            this.memoizedIsInitialized = (byte) -1;
            this.chargingCurveAtPower_ = Collections.emptyList();
        }

        public static ChargingCurves parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static ChargingCurves parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static ChargingCurves parseFrom(InputStream inputStream) {
            return (ChargingCurves) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private ChargingCurves(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            boolean z3 = false;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag != 10) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                if (!(z3 & true)) {
                                    this.chargingCurveAtPower_ = new ArrayList();
                                    z3 |= true;
                                }
                                this.chargingCurveAtPower_.add((ChargingCurveAtPower) codedInputStream.readMessage(ChargingCurveAtPower.parser(), extensionRegistryLite));
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.chargingCurveAtPower_ = Collections.unmodifiableList(this.chargingCurveAtPower_);
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z3 & true) {
                this.chargingCurveAtPower_ = Collections.unmodifiableList(this.chargingCurveAtPower_);
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static ChargingCurves parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (ChargingCurves) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ChargingCurves parseFrom(CodedInputStream codedInputStream) {
            return (ChargingCurves) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ChargingCurves parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (ChargingCurves) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface ChargingCurvesOrBuilder extends MessageOrBuilder {
        ChargingCurves.ChargingCurveAtPower getChargingCurveAtPower(int i2);

        int getChargingCurveAtPowerCount();

        List<ChargingCurves.ChargingCurveAtPower> getChargingCurveAtPowerList();

        ChargingCurves.ChargingCurveAtPowerOrBuilder getChargingCurveAtPowerOrBuilder(int i2);

        List<? extends ChargingCurves.ChargingCurveAtPowerOrBuilder> getChargingCurveAtPowerOrBuilderList();
    }

    public static final class ChargingTime extends GeneratedMessageV3 implements ChargingTimeOrBuilder {
        private static final ChargingTime DEFAULT_INSTANCE = new ChargingTime();
        private static final Parser<ChargingTime> PARSER = new AbstractParser<ChargingTime>() { // from class: com.google.android.projection.proto.EnergyModel.ChargingTime.1
            @Override // com.google.protobuf.Parser
            public ChargingTime parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new ChargingTime(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int TARGET_BATTERY_LEVEL_WH_FIELD_NUMBER = 1;
        public static final int TIME_REMAINING_SECS_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int targetBatteryLevelWh_;
        private IntWithUncertainty timeRemainingSecs_;

        public static ChargingTime getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return EnergyModel.internal_static_energy_model_ChargingTime_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ChargingTime parseDelimitedFrom(InputStream inputStream) {
            return (ChargingTime) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ChargingTime parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<ChargingTime> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ChargingTime)) {
                return super.equals(obj);
            }
            ChargingTime chargingTime = (ChargingTime) obj;
            if (getTargetBatteryLevelWh() == chargingTime.getTargetBatteryLevelWh() && hasTimeRemainingSecs() == chargingTime.hasTimeRemainingSecs()) {
                return (!hasTimeRemainingSecs() || getTimeRemainingSecs().equals(chargingTime.getTimeRemainingSecs())) && this.unknownFields.equals(chargingTime.unknownFields);
            }
            return false;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<ChargingTime> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int i3 = this.targetBatteryLevelWh_;
            int iComputeInt32Size = i3 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i3) : 0;
            if (this.timeRemainingSecs_ != null) {
                iComputeInt32Size += CodedOutputStream.computeMessageSize(2, getTimeRemainingSecs());
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeInt32Size;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.android.projection.proto.EnergyModel.ChargingTimeOrBuilder
        public int getTargetBatteryLevelWh() {
            return this.targetBatteryLevelWh_;
        }

        @Override // com.google.android.projection.proto.EnergyModel.ChargingTimeOrBuilder
        public IntWithUncertainty getTimeRemainingSecs() {
            IntWithUncertainty intWithUncertainty = this.timeRemainingSecs_;
            return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
        }

        @Override // com.google.android.projection.proto.EnergyModel.ChargingTimeOrBuilder
        public IntWithUncertaintyOrBuilder getTimeRemainingSecsOrBuilder() {
            return getTimeRemainingSecs();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.android.projection.proto.EnergyModel.ChargingTimeOrBuilder
        public boolean hasTimeRemainingSecs() {
            return this.timeRemainingSecs_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int targetBatteryLevelWh = getTargetBatteryLevelWh() + ((((getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY) * 37) + 1) * 53);
            if (hasTimeRemainingSecs()) {
                targetBatteryLevelWh = getTimeRemainingSecs().hashCode() + m.D(targetBatteryLevelWh, 37, 2, 53);
            }
            int iHashCode = this.unknownFields.hashCode() + (targetBatteryLevelWh * 29);
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return EnergyModel.internal_static_energy_model_ChargingTime_fieldAccessorTable.ensureFieldAccessorsInitialized(ChargingTime.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new ChargingTime();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            int i2 = this.targetBatteryLevelWh_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(1, i2);
            }
            if (this.timeRemainingSecs_ != null) {
                codedOutputStream.writeMessage(2, getTimeRemainingSecs());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ChargingTimeOrBuilder {
            private int targetBatteryLevelWh_;
            private SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> timeRemainingSecsBuilder_;
            private IntWithUncertainty timeRemainingSecs_;

            public static final Descriptors.Descriptor getDescriptor() {
                return EnergyModel.internal_static_energy_model_ChargingTime_descriptor;
            }

            private SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> getTimeRemainingSecsFieldBuilder() {
                if (this.timeRemainingSecsBuilder_ == null) {
                    this.timeRemainingSecsBuilder_ = new SingleFieldBuilderV3<>(getTimeRemainingSecs(), getParentForChildren(), isClean());
                    this.timeRemainingSecs_ = null;
                }
                return this.timeRemainingSecsBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearTargetBatteryLevelWh() {
                this.targetBatteryLevelWh_ = 0;
                onChanged();
                return this;
            }

            public Builder clearTimeRemainingSecs() {
                if (this.timeRemainingSecsBuilder_ == null) {
                    this.timeRemainingSecs_ = null;
                    onChanged();
                } else {
                    this.timeRemainingSecs_ = null;
                    this.timeRemainingSecsBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return EnergyModel.internal_static_energy_model_ChargingTime_descriptor;
            }

            @Override // com.google.android.projection.proto.EnergyModel.ChargingTimeOrBuilder
            public int getTargetBatteryLevelWh() {
                return this.targetBatteryLevelWh_;
            }

            @Override // com.google.android.projection.proto.EnergyModel.ChargingTimeOrBuilder
            public IntWithUncertainty getTimeRemainingSecs() {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.timeRemainingSecsBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (IntWithUncertainty) singleFieldBuilderV3.getMessage();
                }
                IntWithUncertainty intWithUncertainty = this.timeRemainingSecs_;
                return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
            }

            public IntWithUncertainty.Builder getTimeRemainingSecsBuilder() {
                onChanged();
                return (IntWithUncertainty.Builder) getTimeRemainingSecsFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.EnergyModel.ChargingTimeOrBuilder
            public IntWithUncertaintyOrBuilder getTimeRemainingSecsOrBuilder() {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.timeRemainingSecsBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (IntWithUncertaintyOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                IntWithUncertainty intWithUncertainty = this.timeRemainingSecs_;
                return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
            }

            @Override // com.google.android.projection.proto.EnergyModel.ChargingTimeOrBuilder
            public boolean hasTimeRemainingSecs() {
                return (this.timeRemainingSecsBuilder_ == null && this.timeRemainingSecs_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return EnergyModel.internal_static_energy_model_ChargingTime_fieldAccessorTable.ensureFieldAccessorsInitialized(ChargingTime.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeTimeRemainingSecs(IntWithUncertainty intWithUncertainty) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.timeRemainingSecsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    IntWithUncertainty intWithUncertainty2 = this.timeRemainingSecs_;
                    if (intWithUncertainty2 != null) {
                        this.timeRemainingSecs_ = IntWithUncertainty.newBuilder(intWithUncertainty2).mergeFrom(intWithUncertainty).buildPartial();
                    } else {
                        this.timeRemainingSecs_ = intWithUncertainty;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(intWithUncertainty);
                }
                return this;
            }

            public Builder setTargetBatteryLevelWh(int i2) {
                this.targetBatteryLevelWh_ = i2;
                onChanged();
                return this;
            }

            public Builder setTimeRemainingSecs(IntWithUncertainty intWithUncertainty) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.timeRemainingSecsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    intWithUncertainty.getClass();
                    this.timeRemainingSecs_ = intWithUncertainty;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(intWithUncertainty);
                }
                return this;
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ChargingTime build() {
                ChargingTime chargingTimeBuildPartial = buildPartial();
                if (chargingTimeBuildPartial.isInitialized()) {
                    return chargingTimeBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) chargingTimeBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public ChargingTime buildPartial() {
                ChargingTime chargingTime = new ChargingTime(this);
                chargingTime.targetBatteryLevelWh_ = this.targetBatteryLevelWh_;
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.timeRemainingSecsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    chargingTime.timeRemainingSecs_ = this.timeRemainingSecs_;
                } else {
                    chargingTime.timeRemainingSecs_ = (IntWithUncertainty) singleFieldBuilderV3.build();
                }
                onBuilt();
                return chargingTime;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public ChargingTime getDefaultInstanceForType() {
                return ChargingTime.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.targetBatteryLevelWh_ = 0;
                if (this.timeRemainingSecsBuilder_ == null) {
                    this.timeRemainingSecs_ = null;
                } else {
                    this.timeRemainingSecs_ = null;
                    this.timeRemainingSecsBuilder_ = null;
                }
                return this;
            }

            public Builder setTimeRemainingSecs(IntWithUncertainty.Builder builder) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.timeRemainingSecsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.timeRemainingSecs_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ChargingTime) {
                    return mergeFrom((ChargingTime) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(ChargingTime chargingTime) {
                if (chargingTime == ChargingTime.getDefaultInstance()) {
                    return this;
                }
                if (chargingTime.getTargetBatteryLevelWh() != 0) {
                    setTargetBatteryLevelWh(chargingTime.getTargetBatteryLevelWh());
                }
                if (chargingTime.hasTimeRemainingSecs()) {
                    mergeTimeRemainingSecs(chargingTime.getTimeRemainingSecs());
                }
                mergeUnknownFields(((GeneratedMessageV3) chargingTime).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                ChargingTime chargingTime = null;
                try {
                    try {
                        ChargingTime chargingTime2 = (ChargingTime) ChargingTime.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (chargingTime2 != null) {
                            mergeFrom(chargingTime2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        ChargingTime chargingTime3 = (ChargingTime) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            chargingTime = chargingTime3;
                            if (chargingTime != null) {
                                mergeFrom(chargingTime);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (chargingTime != null) {
                        mergeFrom(chargingTime);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(ChargingTime chargingTime) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(chargingTime);
        }

        public static ChargingTime parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private ChargingTime(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ChargingTime parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (ChargingTime) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ChargingTime parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public ChargingTime getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static ChargingTime parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ChargingTime() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ChargingTime parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static ChargingTime parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        private ChargingTime(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.targetBatteryLevelWh_ = codedInputStream.readInt32();
                            } else if (tag != 18) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                IntWithUncertainty intWithUncertainty = this.timeRemainingSecs_;
                                IntWithUncertainty.Builder builder = intWithUncertainty != null ? intWithUncertainty.toBuilder() : null;
                                IntWithUncertainty intWithUncertainty2 = (IntWithUncertainty) codedInputStream.readMessage(IntWithUncertainty.parser(), extensionRegistryLite);
                                this.timeRemainingSecs_ = intWithUncertainty2;
                                if (builder != null) {
                                    builder.mergeFrom(intWithUncertainty2);
                                    this.timeRemainingSecs_ = builder.buildPartial();
                                }
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static ChargingTime parseFrom(InputStream inputStream) {
            return (ChargingTime) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static ChargingTime parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (ChargingTime) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ChargingTime parseFrom(CodedInputStream codedInputStream) {
            return (ChargingTime) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ChargingTime parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (ChargingTime) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface ChargingTimeOrBuilder extends MessageOrBuilder {
        int getTargetBatteryLevelWh();

        IntWithUncertainty getTimeRemainingSecs();

        IntWithUncertaintyOrBuilder getTimeRemainingSecsOrBuilder();

        boolean hasTimeRemainingSecs();
    }

    public static final class DrainAtTemperature extends GeneratedMessageV3 implements DrainAtTemperatureOrBuilder {
        public static final int BATTERY_CONDITIONING_DRAIN_WATTS_FIELD_NUMBER = 3;
        public static final int HVAC_DRAIN_WATTS_FIELD_NUMBER = 2;
        public static final int TEMP_CELSIUS_FIELD_NUMBER = 1;
        public static final int TOTAL_DRAIN_WATTS_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private IntWithUncertainty batteryConditioningDrainWatts_;
        private IntWithUncertainty hvacDrainWatts_;
        private byte memoizedIsInitialized;
        private float tempCelsius_;
        private IntWithUncertainty totalDrainWatts_;
        private static final DrainAtTemperature DEFAULT_INSTANCE = new DrainAtTemperature();
        private static final Parser<DrainAtTemperature> PARSER = new AbstractParser<DrainAtTemperature>() { // from class: com.google.android.projection.proto.EnergyModel.DrainAtTemperature.1
            @Override // com.google.protobuf.Parser
            public DrainAtTemperature parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new DrainAtTemperature(codedInputStream, extensionRegistryLite);
            }
        };

        public static DrainAtTemperature getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return EnergyModel.internal_static_energy_model_DrainAtTemperature_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static DrainAtTemperature parseDelimitedFrom(InputStream inputStream) {
            return (DrainAtTemperature) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DrainAtTemperature parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<DrainAtTemperature> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DrainAtTemperature)) {
                return super.equals(obj);
            }
            DrainAtTemperature drainAtTemperature = (DrainAtTemperature) obj;
            if (Float.floatToIntBits(getTempCelsius()) != Float.floatToIntBits(drainAtTemperature.getTempCelsius()) || hasHvacDrainWatts() != drainAtTemperature.hasHvacDrainWatts()) {
                return false;
            }
            if ((hasHvacDrainWatts() && !getHvacDrainWatts().equals(drainAtTemperature.getHvacDrainWatts())) || hasBatteryConditioningDrainWatts() != drainAtTemperature.hasBatteryConditioningDrainWatts()) {
                return false;
            }
            if ((!hasBatteryConditioningDrainWatts() || getBatteryConditioningDrainWatts().equals(drainAtTemperature.getBatteryConditioningDrainWatts())) && hasTotalDrainWatts() == drainAtTemperature.hasTotalDrainWatts()) {
                return (!hasTotalDrainWatts() || getTotalDrainWatts().equals(drainAtTemperature.getTotalDrainWatts())) && this.unknownFields.equals(drainAtTemperature.unknownFields);
            }
            return false;
        }

        @Override // com.google.android.projection.proto.EnergyModel.DrainAtTemperatureOrBuilder
        public IntWithUncertainty getBatteryConditioningDrainWatts() {
            IntWithUncertainty intWithUncertainty = this.batteryConditioningDrainWatts_;
            return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
        }

        @Override // com.google.android.projection.proto.EnergyModel.DrainAtTemperatureOrBuilder
        public IntWithUncertaintyOrBuilder getBatteryConditioningDrainWattsOrBuilder() {
            return getBatteryConditioningDrainWatts();
        }

        @Override // com.google.android.projection.proto.EnergyModel.DrainAtTemperatureOrBuilder
        public IntWithUncertainty getHvacDrainWatts() {
            IntWithUncertainty intWithUncertainty = this.hvacDrainWatts_;
            return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
        }

        @Override // com.google.android.projection.proto.EnergyModel.DrainAtTemperatureOrBuilder
        public IntWithUncertaintyOrBuilder getHvacDrainWattsOrBuilder() {
            return getHvacDrainWatts();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<DrainAtTemperature> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            float f2 = this.tempCelsius_;
            int iComputeFloatSize = f2 != 0.0f ? 0 + CodedOutputStream.computeFloatSize(1, f2) : 0;
            if (this.hvacDrainWatts_ != null) {
                iComputeFloatSize += CodedOutputStream.computeMessageSize(2, getHvacDrainWatts());
            }
            if (this.batteryConditioningDrainWatts_ != null) {
                iComputeFloatSize += CodedOutputStream.computeMessageSize(3, getBatteryConditioningDrainWatts());
            }
            if (this.totalDrainWatts_ != null) {
                iComputeFloatSize += CodedOutputStream.computeMessageSize(4, getTotalDrainWatts());
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeFloatSize;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.android.projection.proto.EnergyModel.DrainAtTemperatureOrBuilder
        public float getTempCelsius() {
            return this.tempCelsius_;
        }

        @Override // com.google.android.projection.proto.EnergyModel.DrainAtTemperatureOrBuilder
        public IntWithUncertainty getTotalDrainWatts() {
            IntWithUncertainty intWithUncertainty = this.totalDrainWatts_;
            return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
        }

        @Override // com.google.android.projection.proto.EnergyModel.DrainAtTemperatureOrBuilder
        public IntWithUncertaintyOrBuilder getTotalDrainWattsOrBuilder() {
            return getTotalDrainWatts();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.android.projection.proto.EnergyModel.DrainAtTemperatureOrBuilder
        public boolean hasBatteryConditioningDrainWatts() {
            return this.batteryConditioningDrainWatts_ != null;
        }

        @Override // com.google.android.projection.proto.EnergyModel.DrainAtTemperatureOrBuilder
        public boolean hasHvacDrainWatts() {
            return this.hvacDrainWatts_ != null;
        }

        @Override // com.google.android.projection.proto.EnergyModel.DrainAtTemperatureOrBuilder
        public boolean hasTotalDrainWatts() {
            return this.totalDrainWatts_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iFloatToIntBits = Float.floatToIntBits(getTempCelsius()) + ((((getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY) * 37) + 1) * 53);
            if (hasHvacDrainWatts()) {
                iFloatToIntBits = getHvacDrainWatts().hashCode() + m.D(iFloatToIntBits, 37, 2, 53);
            }
            if (hasBatteryConditioningDrainWatts()) {
                iFloatToIntBits = getBatteryConditioningDrainWatts().hashCode() + m.D(iFloatToIntBits, 37, 3, 53);
            }
            if (hasTotalDrainWatts()) {
                iFloatToIntBits = getTotalDrainWatts().hashCode() + m.D(iFloatToIntBits, 37, 4, 53);
            }
            int iHashCode = this.unknownFields.hashCode() + (iFloatToIntBits * 29);
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return EnergyModel.internal_static_energy_model_DrainAtTemperature_fieldAccessorTable.ensureFieldAccessorsInitialized(DrainAtTemperature.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new DrainAtTemperature();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            float f2 = this.tempCelsius_;
            if (f2 != 0.0f) {
                codedOutputStream.writeFloat(1, f2);
            }
            if (this.hvacDrainWatts_ != null) {
                codedOutputStream.writeMessage(2, getHvacDrainWatts());
            }
            if (this.batteryConditioningDrainWatts_ != null) {
                codedOutputStream.writeMessage(3, getBatteryConditioningDrainWatts());
            }
            if (this.totalDrainWatts_ != null) {
                codedOutputStream.writeMessage(4, getTotalDrainWatts());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements DrainAtTemperatureOrBuilder {
            private SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> batteryConditioningDrainWattsBuilder_;
            private IntWithUncertainty batteryConditioningDrainWatts_;
            private SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> hvacDrainWattsBuilder_;
            private IntWithUncertainty hvacDrainWatts_;
            private float tempCelsius_;
            private SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> totalDrainWattsBuilder_;
            private IntWithUncertainty totalDrainWatts_;

            private SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> getBatteryConditioningDrainWattsFieldBuilder() {
                if (this.batteryConditioningDrainWattsBuilder_ == null) {
                    this.batteryConditioningDrainWattsBuilder_ = new SingleFieldBuilderV3<>(getBatteryConditioningDrainWatts(), getParentForChildren(), isClean());
                    this.batteryConditioningDrainWatts_ = null;
                }
                return this.batteryConditioningDrainWattsBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return EnergyModel.internal_static_energy_model_DrainAtTemperature_descriptor;
            }

            private SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> getHvacDrainWattsFieldBuilder() {
                if (this.hvacDrainWattsBuilder_ == null) {
                    this.hvacDrainWattsBuilder_ = new SingleFieldBuilderV3<>(getHvacDrainWatts(), getParentForChildren(), isClean());
                    this.hvacDrainWatts_ = null;
                }
                return this.hvacDrainWattsBuilder_;
            }

            private SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> getTotalDrainWattsFieldBuilder() {
                if (this.totalDrainWattsBuilder_ == null) {
                    this.totalDrainWattsBuilder_ = new SingleFieldBuilderV3<>(getTotalDrainWatts(), getParentForChildren(), isClean());
                    this.totalDrainWatts_ = null;
                }
                return this.totalDrainWattsBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearBatteryConditioningDrainWatts() {
                if (this.batteryConditioningDrainWattsBuilder_ == null) {
                    this.batteryConditioningDrainWatts_ = null;
                    onChanged();
                } else {
                    this.batteryConditioningDrainWatts_ = null;
                    this.batteryConditioningDrainWattsBuilder_ = null;
                }
                return this;
            }

            public Builder clearHvacDrainWatts() {
                if (this.hvacDrainWattsBuilder_ == null) {
                    this.hvacDrainWatts_ = null;
                    onChanged();
                } else {
                    this.hvacDrainWatts_ = null;
                    this.hvacDrainWattsBuilder_ = null;
                }
                return this;
            }

            public Builder clearTempCelsius() {
                this.tempCelsius_ = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearTotalDrainWatts() {
                if (this.totalDrainWattsBuilder_ == null) {
                    this.totalDrainWatts_ = null;
                    onChanged();
                } else {
                    this.totalDrainWatts_ = null;
                    this.totalDrainWattsBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.android.projection.proto.EnergyModel.DrainAtTemperatureOrBuilder
            public IntWithUncertainty getBatteryConditioningDrainWatts() {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.batteryConditioningDrainWattsBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (IntWithUncertainty) singleFieldBuilderV3.getMessage();
                }
                IntWithUncertainty intWithUncertainty = this.batteryConditioningDrainWatts_;
                return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
            }

            public IntWithUncertainty.Builder getBatteryConditioningDrainWattsBuilder() {
                onChanged();
                return (IntWithUncertainty.Builder) getBatteryConditioningDrainWattsFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.EnergyModel.DrainAtTemperatureOrBuilder
            public IntWithUncertaintyOrBuilder getBatteryConditioningDrainWattsOrBuilder() {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.batteryConditioningDrainWattsBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (IntWithUncertaintyOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                IntWithUncertainty intWithUncertainty = this.batteryConditioningDrainWatts_;
                return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return EnergyModel.internal_static_energy_model_DrainAtTemperature_descriptor;
            }

            @Override // com.google.android.projection.proto.EnergyModel.DrainAtTemperatureOrBuilder
            public IntWithUncertainty getHvacDrainWatts() {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.hvacDrainWattsBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (IntWithUncertainty) singleFieldBuilderV3.getMessage();
                }
                IntWithUncertainty intWithUncertainty = this.hvacDrainWatts_;
                return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
            }

            public IntWithUncertainty.Builder getHvacDrainWattsBuilder() {
                onChanged();
                return (IntWithUncertainty.Builder) getHvacDrainWattsFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.EnergyModel.DrainAtTemperatureOrBuilder
            public IntWithUncertaintyOrBuilder getHvacDrainWattsOrBuilder() {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.hvacDrainWattsBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (IntWithUncertaintyOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                IntWithUncertainty intWithUncertainty = this.hvacDrainWatts_;
                return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
            }

            @Override // com.google.android.projection.proto.EnergyModel.DrainAtTemperatureOrBuilder
            public float getTempCelsius() {
                return this.tempCelsius_;
            }

            @Override // com.google.android.projection.proto.EnergyModel.DrainAtTemperatureOrBuilder
            public IntWithUncertainty getTotalDrainWatts() {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.totalDrainWattsBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (IntWithUncertainty) singleFieldBuilderV3.getMessage();
                }
                IntWithUncertainty intWithUncertainty = this.totalDrainWatts_;
                return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
            }

            public IntWithUncertainty.Builder getTotalDrainWattsBuilder() {
                onChanged();
                return (IntWithUncertainty.Builder) getTotalDrainWattsFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.EnergyModel.DrainAtTemperatureOrBuilder
            public IntWithUncertaintyOrBuilder getTotalDrainWattsOrBuilder() {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.totalDrainWattsBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (IntWithUncertaintyOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                IntWithUncertainty intWithUncertainty = this.totalDrainWatts_;
                return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
            }

            @Override // com.google.android.projection.proto.EnergyModel.DrainAtTemperatureOrBuilder
            public boolean hasBatteryConditioningDrainWatts() {
                return (this.batteryConditioningDrainWattsBuilder_ == null && this.batteryConditioningDrainWatts_ == null) ? false : true;
            }

            @Override // com.google.android.projection.proto.EnergyModel.DrainAtTemperatureOrBuilder
            public boolean hasHvacDrainWatts() {
                return (this.hvacDrainWattsBuilder_ == null && this.hvacDrainWatts_ == null) ? false : true;
            }

            @Override // com.google.android.projection.proto.EnergyModel.DrainAtTemperatureOrBuilder
            public boolean hasTotalDrainWatts() {
                return (this.totalDrainWattsBuilder_ == null && this.totalDrainWatts_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return EnergyModel.internal_static_energy_model_DrainAtTemperature_fieldAccessorTable.ensureFieldAccessorsInitialized(DrainAtTemperature.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeBatteryConditioningDrainWatts(IntWithUncertainty intWithUncertainty) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.batteryConditioningDrainWattsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    IntWithUncertainty intWithUncertainty2 = this.batteryConditioningDrainWatts_;
                    if (intWithUncertainty2 != null) {
                        this.batteryConditioningDrainWatts_ = IntWithUncertainty.newBuilder(intWithUncertainty2).mergeFrom(intWithUncertainty).buildPartial();
                    } else {
                        this.batteryConditioningDrainWatts_ = intWithUncertainty;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(intWithUncertainty);
                }
                return this;
            }

            public Builder mergeHvacDrainWatts(IntWithUncertainty intWithUncertainty) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.hvacDrainWattsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    IntWithUncertainty intWithUncertainty2 = this.hvacDrainWatts_;
                    if (intWithUncertainty2 != null) {
                        this.hvacDrainWatts_ = IntWithUncertainty.newBuilder(intWithUncertainty2).mergeFrom(intWithUncertainty).buildPartial();
                    } else {
                        this.hvacDrainWatts_ = intWithUncertainty;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(intWithUncertainty);
                }
                return this;
            }

            public Builder mergeTotalDrainWatts(IntWithUncertainty intWithUncertainty) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.totalDrainWattsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    IntWithUncertainty intWithUncertainty2 = this.totalDrainWatts_;
                    if (intWithUncertainty2 != null) {
                        this.totalDrainWatts_ = IntWithUncertainty.newBuilder(intWithUncertainty2).mergeFrom(intWithUncertainty).buildPartial();
                    } else {
                        this.totalDrainWatts_ = intWithUncertainty;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(intWithUncertainty);
                }
                return this;
            }

            public Builder setBatteryConditioningDrainWatts(IntWithUncertainty intWithUncertainty) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.batteryConditioningDrainWattsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    intWithUncertainty.getClass();
                    this.batteryConditioningDrainWatts_ = intWithUncertainty;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(intWithUncertainty);
                }
                return this;
            }

            public Builder setHvacDrainWatts(IntWithUncertainty intWithUncertainty) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.hvacDrainWattsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    intWithUncertainty.getClass();
                    this.hvacDrainWatts_ = intWithUncertainty;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(intWithUncertainty);
                }
                return this;
            }

            public Builder setTempCelsius(float f2) {
                this.tempCelsius_ = f2;
                onChanged();
                return this;
            }

            public Builder setTotalDrainWatts(IntWithUncertainty intWithUncertainty) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.totalDrainWattsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    intWithUncertainty.getClass();
                    this.totalDrainWatts_ = intWithUncertainty;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(intWithUncertainty);
                }
                return this;
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DrainAtTemperature build() {
                DrainAtTemperature drainAtTemperatureBuildPartial = buildPartial();
                if (drainAtTemperatureBuildPartial.isInitialized()) {
                    return drainAtTemperatureBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) drainAtTemperatureBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DrainAtTemperature buildPartial() {
                DrainAtTemperature drainAtTemperature = new DrainAtTemperature(this);
                drainAtTemperature.tempCelsius_ = this.tempCelsius_;
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.hvacDrainWattsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    drainAtTemperature.hvacDrainWatts_ = this.hvacDrainWatts_;
                } else {
                    drainAtTemperature.hvacDrainWatts_ = (IntWithUncertainty) singleFieldBuilderV3.build();
                }
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV4 = this.batteryConditioningDrainWattsBuilder_;
                if (singleFieldBuilderV4 == null) {
                    drainAtTemperature.batteryConditioningDrainWatts_ = this.batteryConditioningDrainWatts_;
                } else {
                    drainAtTemperature.batteryConditioningDrainWatts_ = (IntWithUncertainty) singleFieldBuilderV4.build();
                }
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV5 = this.totalDrainWattsBuilder_;
                if (singleFieldBuilderV5 == null) {
                    drainAtTemperature.totalDrainWatts_ = this.totalDrainWatts_;
                } else {
                    drainAtTemperature.totalDrainWatts_ = (IntWithUncertainty) singleFieldBuilderV5.build();
                }
                onBuilt();
                return drainAtTemperature;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public DrainAtTemperature getDefaultInstanceForType() {
                return DrainAtTemperature.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.tempCelsius_ = 0.0f;
                if (this.hvacDrainWattsBuilder_ == null) {
                    this.hvacDrainWatts_ = null;
                } else {
                    this.hvacDrainWatts_ = null;
                    this.hvacDrainWattsBuilder_ = null;
                }
                if (this.batteryConditioningDrainWattsBuilder_ == null) {
                    this.batteryConditioningDrainWatts_ = null;
                } else {
                    this.batteryConditioningDrainWatts_ = null;
                    this.batteryConditioningDrainWattsBuilder_ = null;
                }
                if (this.totalDrainWattsBuilder_ == null) {
                    this.totalDrainWatts_ = null;
                } else {
                    this.totalDrainWatts_ = null;
                    this.totalDrainWattsBuilder_ = null;
                }
                return this;
            }

            public Builder setBatteryConditioningDrainWatts(IntWithUncertainty.Builder builder) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.batteryConditioningDrainWattsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.batteryConditioningDrainWatts_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder setHvacDrainWatts(IntWithUncertainty.Builder builder) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.hvacDrainWattsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.hvacDrainWatts_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder setTotalDrainWatts(IntWithUncertainty.Builder builder) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.totalDrainWattsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.totalDrainWatts_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof DrainAtTemperature) {
                    return mergeFrom((DrainAtTemperature) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(DrainAtTemperature drainAtTemperature) {
                if (drainAtTemperature == DrainAtTemperature.getDefaultInstance()) {
                    return this;
                }
                if (drainAtTemperature.getTempCelsius() != 0.0f) {
                    setTempCelsius(drainAtTemperature.getTempCelsius());
                }
                if (drainAtTemperature.hasHvacDrainWatts()) {
                    mergeHvacDrainWatts(drainAtTemperature.getHvacDrainWatts());
                }
                if (drainAtTemperature.hasBatteryConditioningDrainWatts()) {
                    mergeBatteryConditioningDrainWatts(drainAtTemperature.getBatteryConditioningDrainWatts());
                }
                if (drainAtTemperature.hasTotalDrainWatts()) {
                    mergeTotalDrainWatts(drainAtTemperature.getTotalDrainWatts());
                }
                mergeUnknownFields(((GeneratedMessageV3) drainAtTemperature).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                DrainAtTemperature drainAtTemperature = null;
                try {
                    try {
                        DrainAtTemperature drainAtTemperature2 = (DrainAtTemperature) DrainAtTemperature.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (drainAtTemperature2 != null) {
                            mergeFrom(drainAtTemperature2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        DrainAtTemperature drainAtTemperature3 = (DrainAtTemperature) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            drainAtTemperature = drainAtTemperature3;
                            if (drainAtTemperature != null) {
                                mergeFrom(drainAtTemperature);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (drainAtTemperature != null) {
                        mergeFrom(drainAtTemperature);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(DrainAtTemperature drainAtTemperature) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(drainAtTemperature);
        }

        public static DrainAtTemperature parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private DrainAtTemperature(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DrainAtTemperature parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (DrainAtTemperature) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static DrainAtTemperature parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public DrainAtTemperature getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static DrainAtTemperature parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private DrainAtTemperature() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DrainAtTemperature parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static DrainAtTemperature parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        private DrainAtTemperature(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            IntWithUncertainty.Builder builder;
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag != 13) {
                                if (tag == 18) {
                                    IntWithUncertainty intWithUncertainty = this.hvacDrainWatts_;
                                    builder = intWithUncertainty != null ? intWithUncertainty.toBuilder() : null;
                                    IntWithUncertainty intWithUncertainty2 = (IntWithUncertainty) codedInputStream.readMessage(IntWithUncertainty.parser(), extensionRegistryLite);
                                    this.hvacDrainWatts_ = intWithUncertainty2;
                                    if (builder != null) {
                                        builder.mergeFrom(intWithUncertainty2);
                                        this.hvacDrainWatts_ = builder.buildPartial();
                                    }
                                } else if (tag == 26) {
                                    IntWithUncertainty intWithUncertainty3 = this.batteryConditioningDrainWatts_;
                                    builder = intWithUncertainty3 != null ? intWithUncertainty3.toBuilder() : null;
                                    IntWithUncertainty intWithUncertainty4 = (IntWithUncertainty) codedInputStream.readMessage(IntWithUncertainty.parser(), extensionRegistryLite);
                                    this.batteryConditioningDrainWatts_ = intWithUncertainty4;
                                    if (builder != null) {
                                        builder.mergeFrom(intWithUncertainty4);
                                        this.batteryConditioningDrainWatts_ = builder.buildPartial();
                                    }
                                } else if (tag != 34) {
                                    if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                    }
                                } else {
                                    IntWithUncertainty intWithUncertainty5 = this.totalDrainWatts_;
                                    builder = intWithUncertainty5 != null ? intWithUncertainty5.toBuilder() : null;
                                    IntWithUncertainty intWithUncertainty6 = (IntWithUncertainty) codedInputStream.readMessage(IntWithUncertainty.parser(), extensionRegistryLite);
                                    this.totalDrainWatts_ = intWithUncertainty6;
                                    if (builder != null) {
                                        builder.mergeFrom(intWithUncertainty6);
                                        this.totalDrainWatts_ = builder.buildPartial();
                                    }
                                }
                            } else {
                                this.tempCelsius_ = codedInputStream.readFloat();
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static DrainAtTemperature parseFrom(InputStream inputStream) {
            return (DrainAtTemperature) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static DrainAtTemperature parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (DrainAtTemperature) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static DrainAtTemperature parseFrom(CodedInputStream codedInputStream) {
            return (DrainAtTemperature) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static DrainAtTemperature parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (DrainAtTemperature) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface DrainAtTemperatureOrBuilder extends MessageOrBuilder {
        IntWithUncertainty getBatteryConditioningDrainWatts();

        IntWithUncertaintyOrBuilder getBatteryConditioningDrainWattsOrBuilder();

        IntWithUncertainty getHvacDrainWatts();

        IntWithUncertaintyOrBuilder getHvacDrainWattsOrBuilder();

        float getTempCelsius();

        IntWithUncertainty getTotalDrainWatts();

        IntWithUncertaintyOrBuilder getTotalDrainWattsOrBuilder();

        boolean hasBatteryConditioningDrainWatts();

        boolean hasHvacDrainWatts();

        boolean hasTotalDrainWatts();
    }

    public static final class DrainAtTime extends GeneratedMessageV3 implements DrainAtTimeOrBuilder {
        public static final int DRAIN_WATTS_FIELD_NUMBER = 3;
        public static final int RELATIVE_TIME_SEC_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private IntWithUncertainty drainWatts_;
        private byte memoizedIsInitialized;
        private int relativeTimeSec_;
        private static final DrainAtTime DEFAULT_INSTANCE = new DrainAtTime();
        private static final Parser<DrainAtTime> PARSER = new AbstractParser<DrainAtTime>() { // from class: com.google.android.projection.proto.EnergyModel.DrainAtTime.1
            @Override // com.google.protobuf.Parser
            public DrainAtTime parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new DrainAtTime(codedInputStream, extensionRegistryLite);
            }
        };

        public static DrainAtTime getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return EnergyModel.internal_static_energy_model_DrainAtTime_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static DrainAtTime parseDelimitedFrom(InputStream inputStream) {
            return (DrainAtTime) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DrainAtTime parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<DrainAtTime> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DrainAtTime)) {
                return super.equals(obj);
            }
            DrainAtTime drainAtTime = (DrainAtTime) obj;
            if (getRelativeTimeSec() == drainAtTime.getRelativeTimeSec() && hasDrainWatts() == drainAtTime.hasDrainWatts()) {
                return (!hasDrainWatts() || getDrainWatts().equals(drainAtTime.getDrainWatts())) && this.unknownFields.equals(drainAtTime.unknownFields);
            }
            return false;
        }

        @Override // com.google.android.projection.proto.EnergyModel.DrainAtTimeOrBuilder
        public IntWithUncertainty getDrainWatts() {
            IntWithUncertainty intWithUncertainty = this.drainWatts_;
            return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
        }

        @Override // com.google.android.projection.proto.EnergyModel.DrainAtTimeOrBuilder
        public IntWithUncertaintyOrBuilder getDrainWattsOrBuilder() {
            return getDrainWatts();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<DrainAtTime> getParserForType() {
            return PARSER;
        }

        @Override // com.google.android.projection.proto.EnergyModel.DrainAtTimeOrBuilder
        public int getRelativeTimeSec() {
            return this.relativeTimeSec_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int i3 = this.relativeTimeSec_;
            int iComputeInt32Size = i3 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i3) : 0;
            if (this.drainWatts_ != null) {
                iComputeInt32Size += CodedOutputStream.computeMessageSize(3, getDrainWatts());
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeInt32Size;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.android.projection.proto.EnergyModel.DrainAtTimeOrBuilder
        public boolean hasDrainWatts() {
            return this.drainWatts_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int relativeTimeSec = getRelativeTimeSec() + ((((getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY) * 37) + 1) * 53);
            if (hasDrainWatts()) {
                relativeTimeSec = getDrainWatts().hashCode() + m.D(relativeTimeSec, 37, 3, 53);
            }
            int iHashCode = this.unknownFields.hashCode() + (relativeTimeSec * 29);
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return EnergyModel.internal_static_energy_model_DrainAtTime_fieldAccessorTable.ensureFieldAccessorsInitialized(DrainAtTime.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new DrainAtTime();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            int i2 = this.relativeTimeSec_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(1, i2);
            }
            if (this.drainWatts_ != null) {
                codedOutputStream.writeMessage(3, getDrainWatts());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements DrainAtTimeOrBuilder {
            private SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> drainWattsBuilder_;
            private IntWithUncertainty drainWatts_;
            private int relativeTimeSec_;

            public static final Descriptors.Descriptor getDescriptor() {
                return EnergyModel.internal_static_energy_model_DrainAtTime_descriptor;
            }

            private SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> getDrainWattsFieldBuilder() {
                if (this.drainWattsBuilder_ == null) {
                    this.drainWattsBuilder_ = new SingleFieldBuilderV3<>(getDrainWatts(), getParentForChildren(), isClean());
                    this.drainWatts_ = null;
                }
                return this.drainWattsBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearDrainWatts() {
                if (this.drainWattsBuilder_ == null) {
                    this.drainWatts_ = null;
                    onChanged();
                } else {
                    this.drainWatts_ = null;
                    this.drainWattsBuilder_ = null;
                }
                return this;
            }

            public Builder clearRelativeTimeSec() {
                this.relativeTimeSec_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return EnergyModel.internal_static_energy_model_DrainAtTime_descriptor;
            }

            @Override // com.google.android.projection.proto.EnergyModel.DrainAtTimeOrBuilder
            public IntWithUncertainty getDrainWatts() {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.drainWattsBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (IntWithUncertainty) singleFieldBuilderV3.getMessage();
                }
                IntWithUncertainty intWithUncertainty = this.drainWatts_;
                return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
            }

            public IntWithUncertainty.Builder getDrainWattsBuilder() {
                onChanged();
                return (IntWithUncertainty.Builder) getDrainWattsFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.EnergyModel.DrainAtTimeOrBuilder
            public IntWithUncertaintyOrBuilder getDrainWattsOrBuilder() {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.drainWattsBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (IntWithUncertaintyOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                IntWithUncertainty intWithUncertainty = this.drainWatts_;
                return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
            }

            @Override // com.google.android.projection.proto.EnergyModel.DrainAtTimeOrBuilder
            public int getRelativeTimeSec() {
                return this.relativeTimeSec_;
            }

            @Override // com.google.android.projection.proto.EnergyModel.DrainAtTimeOrBuilder
            public boolean hasDrainWatts() {
                return (this.drainWattsBuilder_ == null && this.drainWatts_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return EnergyModel.internal_static_energy_model_DrainAtTime_fieldAccessorTable.ensureFieldAccessorsInitialized(DrainAtTime.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeDrainWatts(IntWithUncertainty intWithUncertainty) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.drainWattsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    IntWithUncertainty intWithUncertainty2 = this.drainWatts_;
                    if (intWithUncertainty2 != null) {
                        this.drainWatts_ = IntWithUncertainty.newBuilder(intWithUncertainty2).mergeFrom(intWithUncertainty).buildPartial();
                    } else {
                        this.drainWatts_ = intWithUncertainty;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(intWithUncertainty);
                }
                return this;
            }

            public Builder setDrainWatts(IntWithUncertainty intWithUncertainty) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.drainWattsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    intWithUncertainty.getClass();
                    this.drainWatts_ = intWithUncertainty;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(intWithUncertainty);
                }
                return this;
            }

            public Builder setRelativeTimeSec(int i2) {
                this.relativeTimeSec_ = i2;
                onChanged();
                return this;
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DrainAtTime build() {
                DrainAtTime drainAtTimeBuildPartial = buildPartial();
                if (drainAtTimeBuildPartial.isInitialized()) {
                    return drainAtTimeBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) drainAtTimeBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DrainAtTime buildPartial() {
                DrainAtTime drainAtTime = new DrainAtTime(this);
                drainAtTime.relativeTimeSec_ = this.relativeTimeSec_;
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.drainWattsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    drainAtTime.drainWatts_ = this.drainWatts_;
                } else {
                    drainAtTime.drainWatts_ = (IntWithUncertainty) singleFieldBuilderV3.build();
                }
                onBuilt();
                return drainAtTime;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public DrainAtTime getDefaultInstanceForType() {
                return DrainAtTime.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.relativeTimeSec_ = 0;
                if (this.drainWattsBuilder_ == null) {
                    this.drainWatts_ = null;
                } else {
                    this.drainWatts_ = null;
                    this.drainWattsBuilder_ = null;
                }
                return this;
            }

            public Builder setDrainWatts(IntWithUncertainty.Builder builder) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.drainWattsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.drainWatts_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof DrainAtTime) {
                    return mergeFrom((DrainAtTime) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(DrainAtTime drainAtTime) {
                if (drainAtTime == DrainAtTime.getDefaultInstance()) {
                    return this;
                }
                if (drainAtTime.getRelativeTimeSec() != 0) {
                    setRelativeTimeSec(drainAtTime.getRelativeTimeSec());
                }
                if (drainAtTime.hasDrainWatts()) {
                    mergeDrainWatts(drainAtTime.getDrainWatts());
                }
                mergeUnknownFields(((GeneratedMessageV3) drainAtTime).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                DrainAtTime drainAtTime = null;
                try {
                    try {
                        DrainAtTime drainAtTime2 = (DrainAtTime) DrainAtTime.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (drainAtTime2 != null) {
                            mergeFrom(drainAtTime2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        DrainAtTime drainAtTime3 = (DrainAtTime) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            drainAtTime = drainAtTime3;
                            if (drainAtTime != null) {
                                mergeFrom(drainAtTime);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (drainAtTime != null) {
                        mergeFrom(drainAtTime);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(DrainAtTime drainAtTime) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(drainAtTime);
        }

        public static DrainAtTime parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private DrainAtTime(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DrainAtTime parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (DrainAtTime) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static DrainAtTime parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public DrainAtTime getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static DrainAtTime parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private DrainAtTime() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DrainAtTime parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static DrainAtTime parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        private DrainAtTime(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.relativeTimeSec_ = codedInputStream.readInt32();
                            } else if (tag != 26) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                IntWithUncertainty intWithUncertainty = this.drainWatts_;
                                IntWithUncertainty.Builder builder = intWithUncertainty != null ? intWithUncertainty.toBuilder() : null;
                                IntWithUncertainty intWithUncertainty2 = (IntWithUncertainty) codedInputStream.readMessage(IntWithUncertainty.parser(), extensionRegistryLite);
                                this.drainWatts_ = intWithUncertainty2;
                                if (builder != null) {
                                    builder.mergeFrom(intWithUncertainty2);
                                    this.drainWatts_ = builder.buildPartial();
                                }
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static DrainAtTime parseFrom(InputStream inputStream) {
            return (DrainAtTime) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static DrainAtTime parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (DrainAtTime) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static DrainAtTime parseFrom(CodedInputStream codedInputStream) {
            return (DrainAtTime) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static DrainAtTime parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (DrainAtTime) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface DrainAtTimeOrBuilder extends MessageOrBuilder {
        IntWithUncertainty getDrainWatts();

        IntWithUncertaintyOrBuilder getDrainWattsOrBuilder();

        int getRelativeTimeSec();

        boolean hasDrainWatts();
    }

    public static final class DrivetrainLosses extends GeneratedMessageV3 implements DrivetrainLossesOrBuilder {
        public static final int DRIVETRAIN_POWER_LOSS_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private List<LossSeriesAtSpeed> drivetrainPowerLoss_;
        private byte memoizedIsInitialized;
        private static final DrivetrainLosses DEFAULT_INSTANCE = new DrivetrainLosses();
        private static final Parser<DrivetrainLosses> PARSER = new AbstractParser<DrivetrainLosses>() { // from class: com.google.android.projection.proto.EnergyModel.DrivetrainLosses.1
            @Override // com.google.protobuf.Parser
            public DrivetrainLosses parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new DrivetrainLosses(codedInputStream, extensionRegistryLite);
            }
        };

        public static DrivetrainLosses getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return EnergyModel.internal_static_energy_model_DrivetrainLosses_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static DrivetrainLosses parseDelimitedFrom(InputStream inputStream) {
            return (DrivetrainLosses) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DrivetrainLosses parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<DrivetrainLosses> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DrivetrainLosses)) {
                return super.equals(obj);
            }
            DrivetrainLosses drivetrainLosses = (DrivetrainLosses) obj;
            return getDrivetrainPowerLossList().equals(drivetrainLosses.getDrivetrainPowerLossList()) && this.unknownFields.equals(drivetrainLosses.unknownFields);
        }

        @Override // com.google.android.projection.proto.EnergyModel.DrivetrainLossesOrBuilder
        public LossSeriesAtSpeed getDrivetrainPowerLoss(int i2) {
            return this.drivetrainPowerLoss_.get(i2);
        }

        @Override // com.google.android.projection.proto.EnergyModel.DrivetrainLossesOrBuilder
        public int getDrivetrainPowerLossCount() {
            return this.drivetrainPowerLoss_.size();
        }

        @Override // com.google.android.projection.proto.EnergyModel.DrivetrainLossesOrBuilder
        public List<LossSeriesAtSpeed> getDrivetrainPowerLossList() {
            return this.drivetrainPowerLoss_;
        }

        @Override // com.google.android.projection.proto.EnergyModel.DrivetrainLossesOrBuilder
        public LossSeriesAtSpeedOrBuilder getDrivetrainPowerLossOrBuilder(int i2) {
            return this.drivetrainPowerLoss_.get(i2);
        }

        @Override // com.google.android.projection.proto.EnergyModel.DrivetrainLossesOrBuilder
        public List<? extends LossSeriesAtSpeedOrBuilder> getDrivetrainPowerLossOrBuilderList() {
            return this.drivetrainPowerLoss_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<DrivetrainLosses> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int iComputeMessageSize = 0;
            for (int i3 = 0; i3 < this.drivetrainPowerLoss_.size(); i3++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(7, this.drivetrainPowerLoss_.get(i3));
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeMessageSize;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY;
            if (getDrivetrainPowerLossCount() > 0) {
                iHashCode = m.D(iHashCode, 37, 7, 53) + getDrivetrainPowerLossList().hashCode();
            }
            int iHashCode2 = this.unknownFields.hashCode() + (iHashCode * 29);
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return EnergyModel.internal_static_energy_model_DrivetrainLosses_fieldAccessorTable.ensureFieldAccessorsInitialized(DrivetrainLosses.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new DrivetrainLosses();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            for (int i2 = 0; i2 < this.drivetrainPowerLoss_.size(); i2++) {
                codedOutputStream.writeMessage(7, this.drivetrainPowerLoss_.get(i2));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements DrivetrainLossesOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilderV3<LossSeriesAtSpeed, LossSeriesAtSpeed.Builder, LossSeriesAtSpeedOrBuilder> drivetrainPowerLossBuilder_;
            private List<LossSeriesAtSpeed> drivetrainPowerLoss_;

            private void ensureDrivetrainPowerLossIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.drivetrainPowerLoss_ = new ArrayList(this.drivetrainPowerLoss_);
                    this.bitField0_ |= 1;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return EnergyModel.internal_static_energy_model_DrivetrainLosses_descriptor;
            }

            private RepeatedFieldBuilderV3<LossSeriesAtSpeed, LossSeriesAtSpeed.Builder, LossSeriesAtSpeedOrBuilder> getDrivetrainPowerLossFieldBuilder() {
                if (this.drivetrainPowerLossBuilder_ == null) {
                    this.drivetrainPowerLossBuilder_ = new RepeatedFieldBuilderV3<>(this.drivetrainPowerLoss_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.drivetrainPowerLoss_ = null;
                }
                return this.drivetrainPowerLossBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getDrivetrainPowerLossFieldBuilder();
                }
            }

            public Builder addAllDrivetrainPowerLoss(Iterable<? extends LossSeriesAtSpeed> iterable) {
                RepeatedFieldBuilderV3<LossSeriesAtSpeed, LossSeriesAtSpeed.Builder, LossSeriesAtSpeedOrBuilder> repeatedFieldBuilderV3 = this.drivetrainPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDrivetrainPowerLossIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.drivetrainPowerLoss_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addDrivetrainPowerLoss(LossSeriesAtSpeed lossSeriesAtSpeed) {
                RepeatedFieldBuilderV3<LossSeriesAtSpeed, LossSeriesAtSpeed.Builder, LossSeriesAtSpeedOrBuilder> repeatedFieldBuilderV3 = this.drivetrainPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    lossSeriesAtSpeed.getClass();
                    ensureDrivetrainPowerLossIsMutable();
                    this.drivetrainPowerLoss_.add(lossSeriesAtSpeed);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(lossSeriesAtSpeed);
                }
                return this;
            }

            public LossSeriesAtSpeed.Builder addDrivetrainPowerLossBuilder() {
                return (LossSeriesAtSpeed.Builder) getDrivetrainPowerLossFieldBuilder().addBuilder(LossSeriesAtSpeed.getDefaultInstance());
            }

            public Builder clearDrivetrainPowerLoss() {
                RepeatedFieldBuilderV3<LossSeriesAtSpeed, LossSeriesAtSpeed.Builder, LossSeriesAtSpeedOrBuilder> repeatedFieldBuilderV3 = this.drivetrainPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.drivetrainPowerLoss_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return EnergyModel.internal_static_energy_model_DrivetrainLosses_descriptor;
            }

            @Override // com.google.android.projection.proto.EnergyModel.DrivetrainLossesOrBuilder
            public LossSeriesAtSpeed getDrivetrainPowerLoss(int i2) {
                RepeatedFieldBuilderV3<LossSeriesAtSpeed, LossSeriesAtSpeed.Builder, LossSeriesAtSpeedOrBuilder> repeatedFieldBuilderV3 = this.drivetrainPowerLossBuilder_;
                return repeatedFieldBuilderV3 == null ? this.drivetrainPowerLoss_.get(i2) : (LossSeriesAtSpeed) repeatedFieldBuilderV3.getMessage(i2);
            }

            public LossSeriesAtSpeed.Builder getDrivetrainPowerLossBuilder(int i2) {
                return (LossSeriesAtSpeed.Builder) getDrivetrainPowerLossFieldBuilder().getBuilder(i2);
            }

            public List<LossSeriesAtSpeed.Builder> getDrivetrainPowerLossBuilderList() {
                return getDrivetrainPowerLossFieldBuilder().getBuilderList();
            }

            @Override // com.google.android.projection.proto.EnergyModel.DrivetrainLossesOrBuilder
            public int getDrivetrainPowerLossCount() {
                RepeatedFieldBuilderV3<LossSeriesAtSpeed, LossSeriesAtSpeed.Builder, LossSeriesAtSpeedOrBuilder> repeatedFieldBuilderV3 = this.drivetrainPowerLossBuilder_;
                return repeatedFieldBuilderV3 == null ? this.drivetrainPowerLoss_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.google.android.projection.proto.EnergyModel.DrivetrainLossesOrBuilder
            public List<LossSeriesAtSpeed> getDrivetrainPowerLossList() {
                RepeatedFieldBuilderV3<LossSeriesAtSpeed, LossSeriesAtSpeed.Builder, LossSeriesAtSpeedOrBuilder> repeatedFieldBuilderV3 = this.drivetrainPowerLossBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.drivetrainPowerLoss_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.google.android.projection.proto.EnergyModel.DrivetrainLossesOrBuilder
            public LossSeriesAtSpeedOrBuilder getDrivetrainPowerLossOrBuilder(int i2) {
                RepeatedFieldBuilderV3<LossSeriesAtSpeed, LossSeriesAtSpeed.Builder, LossSeriesAtSpeedOrBuilder> repeatedFieldBuilderV3 = this.drivetrainPowerLossBuilder_;
                return repeatedFieldBuilderV3 == null ? this.drivetrainPowerLoss_.get(i2) : (LossSeriesAtSpeedOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i2);
            }

            @Override // com.google.android.projection.proto.EnergyModel.DrivetrainLossesOrBuilder
            public List<? extends LossSeriesAtSpeedOrBuilder> getDrivetrainPowerLossOrBuilderList() {
                RepeatedFieldBuilderV3<LossSeriesAtSpeed, LossSeriesAtSpeed.Builder, LossSeriesAtSpeedOrBuilder> repeatedFieldBuilderV3 = this.drivetrainPowerLossBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.drivetrainPowerLoss_);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return EnergyModel.internal_static_energy_model_DrivetrainLosses_fieldAccessorTable.ensureFieldAccessorsInitialized(DrivetrainLosses.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder removeDrivetrainPowerLoss(int i2) {
                RepeatedFieldBuilderV3<LossSeriesAtSpeed, LossSeriesAtSpeed.Builder, LossSeriesAtSpeedOrBuilder> repeatedFieldBuilderV3 = this.drivetrainPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDrivetrainPowerLossIsMutable();
                    this.drivetrainPowerLoss_.remove(i2);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i2);
                }
                return this;
            }

            public Builder setDrivetrainPowerLoss(int i2, LossSeriesAtSpeed lossSeriesAtSpeed) {
                RepeatedFieldBuilderV3<LossSeriesAtSpeed, LossSeriesAtSpeed.Builder, LossSeriesAtSpeedOrBuilder> repeatedFieldBuilderV3 = this.drivetrainPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    lossSeriesAtSpeed.getClass();
                    ensureDrivetrainPowerLossIsMutable();
                    this.drivetrainPowerLoss_.set(i2, lossSeriesAtSpeed);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i2, lossSeriesAtSpeed);
                }
                return this;
            }

            private Builder() {
                this.drivetrainPowerLoss_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DrivetrainLosses build() {
                DrivetrainLosses drivetrainLossesBuildPartial = buildPartial();
                if (drivetrainLossesBuildPartial.isInitialized()) {
                    return drivetrainLossesBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) drivetrainLossesBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public DrivetrainLosses buildPartial() {
                DrivetrainLosses drivetrainLosses = new DrivetrainLosses(this);
                int i2 = this.bitField0_;
                RepeatedFieldBuilderV3<LossSeriesAtSpeed, LossSeriesAtSpeed.Builder, LossSeriesAtSpeedOrBuilder> repeatedFieldBuilderV3 = this.drivetrainPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i2 & 1) != 0) {
                        this.drivetrainPowerLoss_ = Collections.unmodifiableList(this.drivetrainPowerLoss_);
                        this.bitField0_ &= -2;
                    }
                    drivetrainLosses.drivetrainPowerLoss_ = this.drivetrainPowerLoss_;
                } else {
                    drivetrainLosses.drivetrainPowerLoss_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return drivetrainLosses;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public DrivetrainLosses getDefaultInstanceForType() {
                return DrivetrainLosses.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            public LossSeriesAtSpeed.Builder addDrivetrainPowerLossBuilder(int i2) {
                return (LossSeriesAtSpeed.Builder) getDrivetrainPowerLossFieldBuilder().addBuilder(i2, LossSeriesAtSpeed.getDefaultInstance());
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                RepeatedFieldBuilderV3<LossSeriesAtSpeed, LossSeriesAtSpeed.Builder, LossSeriesAtSpeedOrBuilder> repeatedFieldBuilderV3 = this.drivetrainPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.drivetrainPowerLoss_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.drivetrainPowerLoss_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addDrivetrainPowerLoss(int i2, LossSeriesAtSpeed lossSeriesAtSpeed) {
                RepeatedFieldBuilderV3<LossSeriesAtSpeed, LossSeriesAtSpeed.Builder, LossSeriesAtSpeedOrBuilder> repeatedFieldBuilderV3 = this.drivetrainPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    lossSeriesAtSpeed.getClass();
                    ensureDrivetrainPowerLossIsMutable();
                    this.drivetrainPowerLoss_.add(i2, lossSeriesAtSpeed);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i2, lossSeriesAtSpeed);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof DrivetrainLosses) {
                    return mergeFrom((DrivetrainLosses) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setDrivetrainPowerLoss(int i2, LossSeriesAtSpeed.Builder builder) {
                RepeatedFieldBuilderV3<LossSeriesAtSpeed, LossSeriesAtSpeed.Builder, LossSeriesAtSpeedOrBuilder> repeatedFieldBuilderV3 = this.drivetrainPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDrivetrainPowerLossIsMutable();
                    this.drivetrainPowerLoss_.set(i2, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i2, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(DrivetrainLosses drivetrainLosses) {
                if (drivetrainLosses == DrivetrainLosses.getDefaultInstance()) {
                    return this;
                }
                if (this.drivetrainPowerLossBuilder_ == null) {
                    if (!drivetrainLosses.drivetrainPowerLoss_.isEmpty()) {
                        if (this.drivetrainPowerLoss_.isEmpty()) {
                            this.drivetrainPowerLoss_ = drivetrainLosses.drivetrainPowerLoss_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureDrivetrainPowerLossIsMutable();
                            this.drivetrainPowerLoss_.addAll(drivetrainLosses.drivetrainPowerLoss_);
                        }
                        onChanged();
                    }
                } else if (!drivetrainLosses.drivetrainPowerLoss_.isEmpty()) {
                    if (this.drivetrainPowerLossBuilder_.isEmpty()) {
                        this.drivetrainPowerLossBuilder_.dispose();
                        this.drivetrainPowerLossBuilder_ = null;
                        this.drivetrainPowerLoss_ = drivetrainLosses.drivetrainPowerLoss_;
                        this.bitField0_ &= -2;
                        this.drivetrainPowerLossBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getDrivetrainPowerLossFieldBuilder() : null;
                    } else {
                        this.drivetrainPowerLossBuilder_.addAllMessages(drivetrainLosses.drivetrainPowerLoss_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) drivetrainLosses).unknownFields);
                onChanged();
                return this;
            }

            public Builder addDrivetrainPowerLoss(LossSeriesAtSpeed.Builder builder) {
                RepeatedFieldBuilderV3<LossSeriesAtSpeed, LossSeriesAtSpeed.Builder, LossSeriesAtSpeedOrBuilder> repeatedFieldBuilderV3 = this.drivetrainPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDrivetrainPowerLossIsMutable();
                    this.drivetrainPowerLoss_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addDrivetrainPowerLoss(int i2, LossSeriesAtSpeed.Builder builder) {
                RepeatedFieldBuilderV3<LossSeriesAtSpeed, LossSeriesAtSpeed.Builder, LossSeriesAtSpeedOrBuilder> repeatedFieldBuilderV3 = this.drivetrainPowerLossBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDrivetrainPowerLossIsMutable();
                    this.drivetrainPowerLoss_.add(i2, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i2, builder.build());
                }
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                DrivetrainLosses drivetrainLosses = null;
                try {
                    try {
                        DrivetrainLosses drivetrainLosses2 = (DrivetrainLosses) DrivetrainLosses.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (drivetrainLosses2 != null) {
                            mergeFrom(drivetrainLosses2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        DrivetrainLosses drivetrainLosses3 = (DrivetrainLosses) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            drivetrainLosses = drivetrainLosses3;
                            if (drivetrainLosses != null) {
                                mergeFrom(drivetrainLosses);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (drivetrainLosses != null) {
                        mergeFrom(drivetrainLosses);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(DrivetrainLosses drivetrainLosses) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(drivetrainLosses);
        }

        public static DrivetrainLosses parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private DrivetrainLosses(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static DrivetrainLosses parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (DrivetrainLosses) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static DrivetrainLosses parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public DrivetrainLosses getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static DrivetrainLosses parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private DrivetrainLosses() {
            this.memoizedIsInitialized = (byte) -1;
            this.drivetrainPowerLoss_ = Collections.emptyList();
        }

        public static DrivetrainLosses parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static DrivetrainLosses parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static DrivetrainLosses parseFrom(InputStream inputStream) {
            return (DrivetrainLosses) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private DrivetrainLosses(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            boolean z3 = false;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag != 58) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                if (!(z3 & true)) {
                                    this.drivetrainPowerLoss_ = new ArrayList();
                                    z3 |= true;
                                }
                                this.drivetrainPowerLoss_.add((LossSeriesAtSpeed) codedInputStream.readMessage(LossSeriesAtSpeed.parser(), extensionRegistryLite));
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.drivetrainPowerLoss_ = Collections.unmodifiableList(this.drivetrainPowerLoss_);
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z3 & true) {
                this.drivetrainPowerLoss_ = Collections.unmodifiableList(this.drivetrainPowerLoss_);
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static DrivetrainLosses parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (DrivetrainLosses) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static DrivetrainLosses parseFrom(CodedInputStream codedInputStream) {
            return (DrivetrainLosses) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static DrivetrainLosses parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (DrivetrainLosses) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface DrivetrainLossesOrBuilder extends MessageOrBuilder {
        LossSeriesAtSpeed getDrivetrainPowerLoss(int i2);

        int getDrivetrainPowerLossCount();

        List<LossSeriesAtSpeed> getDrivetrainPowerLossList();

        LossSeriesAtSpeedOrBuilder getDrivetrainPowerLossOrBuilder(int i2);

        List<? extends LossSeriesAtSpeedOrBuilder> getDrivetrainPowerLossOrBuilderList();
    }

    public static final class FloatWithUncertainty extends GeneratedMessageV3 implements FloatWithUncertaintyOrBuilder {
        public static final int MEAN_FIELD_NUMBER = 1;
        public static final int STANDARD_DEVIATION_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private float mean_;
        private byte memoizedIsInitialized;
        private float standardDeviation_;
        private static final FloatWithUncertainty DEFAULT_INSTANCE = new FloatWithUncertainty();
        private static final Parser<FloatWithUncertainty> PARSER = new AbstractParser<FloatWithUncertainty>() { // from class: com.google.android.projection.proto.EnergyModel.FloatWithUncertainty.1
            @Override // com.google.protobuf.Parser
            public FloatWithUncertainty parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new FloatWithUncertainty(codedInputStream, extensionRegistryLite);
            }
        };

        public static FloatWithUncertainty getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return EnergyModel.internal_static_energy_model_FloatWithUncertainty_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static FloatWithUncertainty parseDelimitedFrom(InputStream inputStream) {
            return (FloatWithUncertainty) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static FloatWithUncertainty parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<FloatWithUncertainty> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FloatWithUncertainty)) {
                return super.equals(obj);
            }
            FloatWithUncertainty floatWithUncertainty = (FloatWithUncertainty) obj;
            return Float.floatToIntBits(getMean()) == Float.floatToIntBits(floatWithUncertainty.getMean()) && Float.floatToIntBits(getStandardDeviation()) == Float.floatToIntBits(floatWithUncertainty.getStandardDeviation()) && this.unknownFields.equals(floatWithUncertainty.unknownFields);
        }

        @Override // com.google.android.projection.proto.EnergyModel.FloatWithUncertaintyOrBuilder
        public float getMean() {
            return this.mean_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<FloatWithUncertainty> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            float f2 = this.mean_;
            int iComputeFloatSize = f2 != 0.0f ? 0 + CodedOutputStream.computeFloatSize(1, f2) : 0;
            float f3 = this.standardDeviation_;
            if (f3 != 0.0f) {
                iComputeFloatSize += CodedOutputStream.computeFloatSize(2, f3);
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeFloatSize;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.android.projection.proto.EnergyModel.FloatWithUncertaintyOrBuilder
        public float getStandardDeviation() {
            return this.standardDeviation_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = this.unknownFields.hashCode() + ((Float.floatToIntBits(getStandardDeviation()) + ((((Float.floatToIntBits(getMean()) + ((((getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY) * 37) + 1) * 53)) * 37) + 2) * 53)) * 29);
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return EnergyModel.internal_static_energy_model_FloatWithUncertainty_fieldAccessorTable.ensureFieldAccessorsInitialized(FloatWithUncertainty.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new FloatWithUncertainty();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            float f2 = this.mean_;
            if (f2 != 0.0f) {
                codedOutputStream.writeFloat(1, f2);
            }
            float f3 = this.standardDeviation_;
            if (f3 != 0.0f) {
                codedOutputStream.writeFloat(2, f3);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements FloatWithUncertaintyOrBuilder {
            private float mean_;
            private float standardDeviation_;

            public static final Descriptors.Descriptor getDescriptor() {
                return EnergyModel.internal_static_energy_model_FloatWithUncertainty_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearMean() {
                this.mean_ = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearStandardDeviation() {
                this.standardDeviation_ = 0.0f;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return EnergyModel.internal_static_energy_model_FloatWithUncertainty_descriptor;
            }

            @Override // com.google.android.projection.proto.EnergyModel.FloatWithUncertaintyOrBuilder
            public float getMean() {
                return this.mean_;
            }

            @Override // com.google.android.projection.proto.EnergyModel.FloatWithUncertaintyOrBuilder
            public float getStandardDeviation() {
                return this.standardDeviation_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return EnergyModel.internal_static_energy_model_FloatWithUncertainty_fieldAccessorTable.ensureFieldAccessorsInitialized(FloatWithUncertainty.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setMean(float f2) {
                this.mean_ = f2;
                onChanged();
                return this;
            }

            public Builder setStandardDeviation(float f2) {
                this.standardDeviation_ = f2;
                onChanged();
                return this;
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public FloatWithUncertainty build() {
                FloatWithUncertainty floatWithUncertaintyBuildPartial = buildPartial();
                if (floatWithUncertaintyBuildPartial.isInitialized()) {
                    return floatWithUncertaintyBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) floatWithUncertaintyBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public FloatWithUncertainty buildPartial() {
                FloatWithUncertainty floatWithUncertainty = new FloatWithUncertainty(this);
                floatWithUncertainty.mean_ = this.mean_;
                floatWithUncertainty.standardDeviation_ = this.standardDeviation_;
                onBuilt();
                return floatWithUncertainty;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public FloatWithUncertainty getDefaultInstanceForType() {
                return FloatWithUncertainty.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.mean_ = 0.0f;
                this.standardDeviation_ = 0.0f;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof FloatWithUncertainty) {
                    return mergeFrom((FloatWithUncertainty) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(FloatWithUncertainty floatWithUncertainty) {
                if (floatWithUncertainty == FloatWithUncertainty.getDefaultInstance()) {
                    return this;
                }
                if (floatWithUncertainty.getMean() != 0.0f) {
                    setMean(floatWithUncertainty.getMean());
                }
                if (floatWithUncertainty.getStandardDeviation() != 0.0f) {
                    setStandardDeviation(floatWithUncertainty.getStandardDeviation());
                }
                mergeUnknownFields(((GeneratedMessageV3) floatWithUncertainty).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                FloatWithUncertainty floatWithUncertainty = null;
                try {
                    try {
                        FloatWithUncertainty floatWithUncertainty2 = (FloatWithUncertainty) FloatWithUncertainty.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (floatWithUncertainty2 != null) {
                            mergeFrom(floatWithUncertainty2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        FloatWithUncertainty floatWithUncertainty3 = (FloatWithUncertainty) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            floatWithUncertainty = floatWithUncertainty3;
                            if (floatWithUncertainty != null) {
                                mergeFrom(floatWithUncertainty);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (floatWithUncertainty != null) {
                        mergeFrom(floatWithUncertainty);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(FloatWithUncertainty floatWithUncertainty) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(floatWithUncertainty);
        }

        public static FloatWithUncertainty parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private FloatWithUncertainty(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static FloatWithUncertainty parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (FloatWithUncertainty) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static FloatWithUncertainty parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public FloatWithUncertainty getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static FloatWithUncertainty parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private FloatWithUncertainty() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static FloatWithUncertainty parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static FloatWithUncertainty parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        private FloatWithUncertainty(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 13) {
                                    this.mean_ = codedInputStream.readFloat();
                                } else if (tag != 21) {
                                    if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                    }
                                } else {
                                    this.standardDeviation_ = codedInputStream.readFloat();
                                }
                            }
                            z2 = true;
                        } catch (IOException e2) {
                            throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e3) {
                        throw e3.setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static FloatWithUncertainty parseFrom(InputStream inputStream) {
            return (FloatWithUncertainty) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static FloatWithUncertainty parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (FloatWithUncertainty) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static FloatWithUncertainty parseFrom(CodedInputStream codedInputStream) {
            return (FloatWithUncertainty) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static FloatWithUncertainty parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (FloatWithUncertainty) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface FloatWithUncertaintyOrBuilder extends MessageOrBuilder {
        float getMean();

        float getStandardDeviation();
    }

    public static final class IntWithUncertainty extends GeneratedMessageV3 implements IntWithUncertaintyOrBuilder {
        public static final int MEAN_FIELD_NUMBER = 1;
        public static final int STANDARD_DEVIATION_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int mean_;
        private byte memoizedIsInitialized;
        private float standardDeviation_;
        private static final IntWithUncertainty DEFAULT_INSTANCE = new IntWithUncertainty();
        private static final Parser<IntWithUncertainty> PARSER = new AbstractParser<IntWithUncertainty>() { // from class: com.google.android.projection.proto.EnergyModel.IntWithUncertainty.1
            @Override // com.google.protobuf.Parser
            public IntWithUncertainty parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new IntWithUncertainty(codedInputStream, extensionRegistryLite);
            }
        };

        public static IntWithUncertainty getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return EnergyModel.internal_static_energy_model_IntWithUncertainty_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static IntWithUncertainty parseDelimitedFrom(InputStream inputStream) {
            return (IntWithUncertainty) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static IntWithUncertainty parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<IntWithUncertainty> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof IntWithUncertainty)) {
                return super.equals(obj);
            }
            IntWithUncertainty intWithUncertainty = (IntWithUncertainty) obj;
            return getMean() == intWithUncertainty.getMean() && Float.floatToIntBits(getStandardDeviation()) == Float.floatToIntBits(intWithUncertainty.getStandardDeviation()) && this.unknownFields.equals(intWithUncertainty.unknownFields);
        }

        @Override // com.google.android.projection.proto.EnergyModel.IntWithUncertaintyOrBuilder
        public int getMean() {
            return this.mean_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<IntWithUncertainty> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int i3 = this.mean_;
            int iComputeInt32Size = i3 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i3) : 0;
            float f2 = this.standardDeviation_;
            if (f2 != 0.0f) {
                iComputeInt32Size += CodedOutputStream.computeFloatSize(2, f2);
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeInt32Size;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.android.projection.proto.EnergyModel.IntWithUncertaintyOrBuilder
        public float getStandardDeviation() {
            return this.standardDeviation_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = this.unknownFields.hashCode() + ((Float.floatToIntBits(getStandardDeviation()) + ((((getMean() + ((((getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY) * 37) + 1) * 53)) * 37) + 2) * 53)) * 29);
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return EnergyModel.internal_static_energy_model_IntWithUncertainty_fieldAccessorTable.ensureFieldAccessorsInitialized(IntWithUncertainty.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new IntWithUncertainty();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            int i2 = this.mean_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(1, i2);
            }
            float f2 = this.standardDeviation_;
            if (f2 != 0.0f) {
                codedOutputStream.writeFloat(2, f2);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements IntWithUncertaintyOrBuilder {
            private int mean_;
            private float standardDeviation_;

            public static final Descriptors.Descriptor getDescriptor() {
                return EnergyModel.internal_static_energy_model_IntWithUncertainty_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearMean() {
                this.mean_ = 0;
                onChanged();
                return this;
            }

            public Builder clearStandardDeviation() {
                this.standardDeviation_ = 0.0f;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return EnergyModel.internal_static_energy_model_IntWithUncertainty_descriptor;
            }

            @Override // com.google.android.projection.proto.EnergyModel.IntWithUncertaintyOrBuilder
            public int getMean() {
                return this.mean_;
            }

            @Override // com.google.android.projection.proto.EnergyModel.IntWithUncertaintyOrBuilder
            public float getStandardDeviation() {
                return this.standardDeviation_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return EnergyModel.internal_static_energy_model_IntWithUncertainty_fieldAccessorTable.ensureFieldAccessorsInitialized(IntWithUncertainty.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setMean(int i2) {
                this.mean_ = i2;
                onChanged();
                return this;
            }

            public Builder setStandardDeviation(float f2) {
                this.standardDeviation_ = f2;
                onChanged();
                return this;
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public IntWithUncertainty build() {
                IntWithUncertainty intWithUncertaintyBuildPartial = buildPartial();
                if (intWithUncertaintyBuildPartial.isInitialized()) {
                    return intWithUncertaintyBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) intWithUncertaintyBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public IntWithUncertainty buildPartial() {
                IntWithUncertainty intWithUncertainty = new IntWithUncertainty(this);
                intWithUncertainty.mean_ = this.mean_;
                intWithUncertainty.standardDeviation_ = this.standardDeviation_;
                onBuilt();
                return intWithUncertainty;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public IntWithUncertainty getDefaultInstanceForType() {
                return IntWithUncertainty.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.mean_ = 0;
                this.standardDeviation_ = 0.0f;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof IntWithUncertainty) {
                    return mergeFrom((IntWithUncertainty) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(IntWithUncertainty intWithUncertainty) {
                if (intWithUncertainty == IntWithUncertainty.getDefaultInstance()) {
                    return this;
                }
                if (intWithUncertainty.getMean() != 0) {
                    setMean(intWithUncertainty.getMean());
                }
                if (intWithUncertainty.getStandardDeviation() != 0.0f) {
                    setStandardDeviation(intWithUncertainty.getStandardDeviation());
                }
                mergeUnknownFields(((GeneratedMessageV3) intWithUncertainty).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                IntWithUncertainty intWithUncertainty = null;
                try {
                    try {
                        IntWithUncertainty intWithUncertainty2 = (IntWithUncertainty) IntWithUncertainty.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (intWithUncertainty2 != null) {
                            mergeFrom(intWithUncertainty2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        IntWithUncertainty intWithUncertainty3 = (IntWithUncertainty) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            intWithUncertainty = intWithUncertainty3;
                            if (intWithUncertainty != null) {
                                mergeFrom(intWithUncertainty);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (intWithUncertainty != null) {
                        mergeFrom(intWithUncertainty);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(IntWithUncertainty intWithUncertainty) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(intWithUncertainty);
        }

        public static IntWithUncertainty parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private IntWithUncertainty(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static IntWithUncertainty parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (IntWithUncertainty) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static IntWithUncertainty parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public IntWithUncertainty getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static IntWithUncertainty parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private IntWithUncertainty() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static IntWithUncertainty parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static IntWithUncertainty parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        private IntWithUncertainty(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.mean_ = codedInputStream.readInt32();
                                } else if (tag != 21) {
                                    if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                    }
                                } else {
                                    this.standardDeviation_ = codedInputStream.readFloat();
                                }
                            }
                            z2 = true;
                        } catch (IOException e2) {
                            throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e3) {
                        throw e3.setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static IntWithUncertainty parseFrom(InputStream inputStream) {
            return (IntWithUncertainty) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static IntWithUncertainty parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (IntWithUncertainty) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static IntWithUncertainty parseFrom(CodedInputStream codedInputStream) {
            return (IntWithUncertainty) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static IntWithUncertainty parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (IntWithUncertainty) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface IntWithUncertaintyOrBuilder extends MessageOrBuilder {
        int getMean();

        float getStandardDeviation();
    }

    public static final class LossAtPower extends GeneratedMessageV3 implements LossAtPowerOrBuilder {
        public static final int LOSS_WATTS_FIELD_NUMBER = 2;
        public static final int POWER_WATTS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private IntWithUncertainty lossWatts_;
        private byte memoizedIsInitialized;
        private int powerWatts_;
        private static final LossAtPower DEFAULT_INSTANCE = new LossAtPower();
        private static final Parser<LossAtPower> PARSER = new AbstractParser<LossAtPower>() { // from class: com.google.android.projection.proto.EnergyModel.LossAtPower.1
            @Override // com.google.protobuf.Parser
            public LossAtPower parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new LossAtPower(codedInputStream, extensionRegistryLite);
            }
        };

        public static LossAtPower getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return EnergyModel.internal_static_energy_model_LossAtPower_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static LossAtPower parseDelimitedFrom(InputStream inputStream) {
            return (LossAtPower) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static LossAtPower parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<LossAtPower> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof LossAtPower)) {
                return super.equals(obj);
            }
            LossAtPower lossAtPower = (LossAtPower) obj;
            if (getPowerWatts() == lossAtPower.getPowerWatts() && hasLossWatts() == lossAtPower.hasLossWatts()) {
                return (!hasLossWatts() || getLossWatts().equals(lossAtPower.getLossWatts())) && this.unknownFields.equals(lossAtPower.unknownFields);
            }
            return false;
        }

        @Override // com.google.android.projection.proto.EnergyModel.LossAtPowerOrBuilder
        public IntWithUncertainty getLossWatts() {
            IntWithUncertainty intWithUncertainty = this.lossWatts_;
            return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
        }

        @Override // com.google.android.projection.proto.EnergyModel.LossAtPowerOrBuilder
        public IntWithUncertaintyOrBuilder getLossWattsOrBuilder() {
            return getLossWatts();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<LossAtPower> getParserForType() {
            return PARSER;
        }

        @Override // com.google.android.projection.proto.EnergyModel.LossAtPowerOrBuilder
        public int getPowerWatts() {
            return this.powerWatts_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int i3 = this.powerWatts_;
            int iComputeSInt32Size = i3 != 0 ? 0 + CodedOutputStream.computeSInt32Size(1, i3) : 0;
            if (this.lossWatts_ != null) {
                iComputeSInt32Size += CodedOutputStream.computeMessageSize(2, getLossWatts());
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeSInt32Size;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.android.projection.proto.EnergyModel.LossAtPowerOrBuilder
        public boolean hasLossWatts() {
            return this.lossWatts_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int powerWatts = getPowerWatts() + ((((getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY) * 37) + 1) * 53);
            if (hasLossWatts()) {
                powerWatts = getLossWatts().hashCode() + m.D(powerWatts, 37, 2, 53);
            }
            int iHashCode = this.unknownFields.hashCode() + (powerWatts * 29);
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return EnergyModel.internal_static_energy_model_LossAtPower_fieldAccessorTable.ensureFieldAccessorsInitialized(LossAtPower.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new LossAtPower();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            int i2 = this.powerWatts_;
            if (i2 != 0) {
                codedOutputStream.writeSInt32(1, i2);
            }
            if (this.lossWatts_ != null) {
                codedOutputStream.writeMessage(2, getLossWatts());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements LossAtPowerOrBuilder {
            private SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> lossWattsBuilder_;
            private IntWithUncertainty lossWatts_;
            private int powerWatts_;

            public static final Descriptors.Descriptor getDescriptor() {
                return EnergyModel.internal_static_energy_model_LossAtPower_descriptor;
            }

            private SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> getLossWattsFieldBuilder() {
                if (this.lossWattsBuilder_ == null) {
                    this.lossWattsBuilder_ = new SingleFieldBuilderV3<>(getLossWatts(), getParentForChildren(), isClean());
                    this.lossWatts_ = null;
                }
                return this.lossWattsBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearLossWatts() {
                if (this.lossWattsBuilder_ == null) {
                    this.lossWatts_ = null;
                    onChanged();
                } else {
                    this.lossWatts_ = null;
                    this.lossWattsBuilder_ = null;
                }
                return this;
            }

            public Builder clearPowerWatts() {
                this.powerWatts_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return EnergyModel.internal_static_energy_model_LossAtPower_descriptor;
            }

            @Override // com.google.android.projection.proto.EnergyModel.LossAtPowerOrBuilder
            public IntWithUncertainty getLossWatts() {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.lossWattsBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (IntWithUncertainty) singleFieldBuilderV3.getMessage();
                }
                IntWithUncertainty intWithUncertainty = this.lossWatts_;
                return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
            }

            public IntWithUncertainty.Builder getLossWattsBuilder() {
                onChanged();
                return (IntWithUncertainty.Builder) getLossWattsFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.EnergyModel.LossAtPowerOrBuilder
            public IntWithUncertaintyOrBuilder getLossWattsOrBuilder() {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.lossWattsBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (IntWithUncertaintyOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                IntWithUncertainty intWithUncertainty = this.lossWatts_;
                return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
            }

            @Override // com.google.android.projection.proto.EnergyModel.LossAtPowerOrBuilder
            public int getPowerWatts() {
                return this.powerWatts_;
            }

            @Override // com.google.android.projection.proto.EnergyModel.LossAtPowerOrBuilder
            public boolean hasLossWatts() {
                return (this.lossWattsBuilder_ == null && this.lossWatts_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return EnergyModel.internal_static_energy_model_LossAtPower_fieldAccessorTable.ensureFieldAccessorsInitialized(LossAtPower.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeLossWatts(IntWithUncertainty intWithUncertainty) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.lossWattsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    IntWithUncertainty intWithUncertainty2 = this.lossWatts_;
                    if (intWithUncertainty2 != null) {
                        this.lossWatts_ = IntWithUncertainty.newBuilder(intWithUncertainty2).mergeFrom(intWithUncertainty).buildPartial();
                    } else {
                        this.lossWatts_ = intWithUncertainty;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(intWithUncertainty);
                }
                return this;
            }

            public Builder setLossWatts(IntWithUncertainty intWithUncertainty) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.lossWattsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    intWithUncertainty.getClass();
                    this.lossWatts_ = intWithUncertainty;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(intWithUncertainty);
                }
                return this;
            }

            public Builder setPowerWatts(int i2) {
                this.powerWatts_ = i2;
                onChanged();
                return this;
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LossAtPower build() {
                LossAtPower lossAtPowerBuildPartial = buildPartial();
                if (lossAtPowerBuildPartial.isInitialized()) {
                    return lossAtPowerBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) lossAtPowerBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LossAtPower buildPartial() {
                LossAtPower lossAtPower = new LossAtPower(this);
                lossAtPower.powerWatts_ = this.powerWatts_;
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.lossWattsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    lossAtPower.lossWatts_ = this.lossWatts_;
                } else {
                    lossAtPower.lossWatts_ = (IntWithUncertainty) singleFieldBuilderV3.build();
                }
                onBuilt();
                return lossAtPower;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public LossAtPower getDefaultInstanceForType() {
                return LossAtPower.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.powerWatts_ = 0;
                if (this.lossWattsBuilder_ == null) {
                    this.lossWatts_ = null;
                } else {
                    this.lossWatts_ = null;
                    this.lossWattsBuilder_ = null;
                }
                return this;
            }

            public Builder setLossWatts(IntWithUncertainty.Builder builder) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.lossWattsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.lossWatts_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof LossAtPower) {
                    return mergeFrom((LossAtPower) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(LossAtPower lossAtPower) {
                if (lossAtPower == LossAtPower.getDefaultInstance()) {
                    return this;
                }
                if (lossAtPower.getPowerWatts() != 0) {
                    setPowerWatts(lossAtPower.getPowerWatts());
                }
                if (lossAtPower.hasLossWatts()) {
                    mergeLossWatts(lossAtPower.getLossWatts());
                }
                mergeUnknownFields(((GeneratedMessageV3) lossAtPower).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                LossAtPower lossAtPower = null;
                try {
                    try {
                        LossAtPower lossAtPower2 = (LossAtPower) LossAtPower.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (lossAtPower2 != null) {
                            mergeFrom(lossAtPower2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        LossAtPower lossAtPower3 = (LossAtPower) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            lossAtPower = lossAtPower3;
                            if (lossAtPower != null) {
                                mergeFrom(lossAtPower);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (lossAtPower != null) {
                        mergeFrom(lossAtPower);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(LossAtPower lossAtPower) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(lossAtPower);
        }

        public static LossAtPower parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private LossAtPower(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static LossAtPower parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (LossAtPower) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static LossAtPower parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public LossAtPower getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static LossAtPower parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private LossAtPower() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static LossAtPower parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static LossAtPower parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        private LossAtPower(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 8) {
                                this.powerWatts_ = codedInputStream.readSInt32();
                            } else if (tag != 18) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                IntWithUncertainty intWithUncertainty = this.lossWatts_;
                                IntWithUncertainty.Builder builder = intWithUncertainty != null ? intWithUncertainty.toBuilder() : null;
                                IntWithUncertainty intWithUncertainty2 = (IntWithUncertainty) codedInputStream.readMessage(IntWithUncertainty.parser(), extensionRegistryLite);
                                this.lossWatts_ = intWithUncertainty2;
                                if (builder != null) {
                                    builder.mergeFrom(intWithUncertainty2);
                                    this.lossWatts_ = builder.buildPartial();
                                }
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static LossAtPower parseFrom(InputStream inputStream) {
            return (LossAtPower) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static LossAtPower parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (LossAtPower) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static LossAtPower parseFrom(CodedInputStream codedInputStream) {
            return (LossAtPower) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static LossAtPower parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (LossAtPower) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface LossAtPowerOrBuilder extends MessageOrBuilder {
        IntWithUncertainty getLossWatts();

        IntWithUncertaintyOrBuilder getLossWattsOrBuilder();

        int getPowerWatts();

        boolean hasLossWatts();
    }

    public static final class LossSeriesAtSpeed extends GeneratedMessageV3 implements LossSeriesAtSpeedOrBuilder {
        public static final int LOSS_AT_POWER_FIELD_NUMBER = 2;
        public static final int SPEED_METERS_PER_SECOND_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<LossAtPower> lossAtPower_;
        private byte memoizedIsInitialized;
        private float speedMetersPerSecond_;
        private static final LossSeriesAtSpeed DEFAULT_INSTANCE = new LossSeriesAtSpeed();
        private static final Parser<LossSeriesAtSpeed> PARSER = new AbstractParser<LossSeriesAtSpeed>() { // from class: com.google.android.projection.proto.EnergyModel.LossSeriesAtSpeed.1
            @Override // com.google.protobuf.Parser
            public LossSeriesAtSpeed parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new LossSeriesAtSpeed(codedInputStream, extensionRegistryLite);
            }
        };

        public static LossSeriesAtSpeed getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return EnergyModel.internal_static_energy_model_LossSeriesAtSpeed_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static LossSeriesAtSpeed parseDelimitedFrom(InputStream inputStream) {
            return (LossSeriesAtSpeed) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static LossSeriesAtSpeed parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<LossSeriesAtSpeed> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof LossSeriesAtSpeed)) {
                return super.equals(obj);
            }
            LossSeriesAtSpeed lossSeriesAtSpeed = (LossSeriesAtSpeed) obj;
            return Float.floatToIntBits(getSpeedMetersPerSecond()) == Float.floatToIntBits(lossSeriesAtSpeed.getSpeedMetersPerSecond()) && getLossAtPowerList().equals(lossSeriesAtSpeed.getLossAtPowerList()) && this.unknownFields.equals(lossSeriesAtSpeed.unknownFields);
        }

        @Override // com.google.android.projection.proto.EnergyModel.LossSeriesAtSpeedOrBuilder
        public LossAtPower getLossAtPower(int i2) {
            return this.lossAtPower_.get(i2);
        }

        @Override // com.google.android.projection.proto.EnergyModel.LossSeriesAtSpeedOrBuilder
        public int getLossAtPowerCount() {
            return this.lossAtPower_.size();
        }

        @Override // com.google.android.projection.proto.EnergyModel.LossSeriesAtSpeedOrBuilder
        public List<LossAtPower> getLossAtPowerList() {
            return this.lossAtPower_;
        }

        @Override // com.google.android.projection.proto.EnergyModel.LossSeriesAtSpeedOrBuilder
        public LossAtPowerOrBuilder getLossAtPowerOrBuilder(int i2) {
            return this.lossAtPower_.get(i2);
        }

        @Override // com.google.android.projection.proto.EnergyModel.LossSeriesAtSpeedOrBuilder
        public List<? extends LossAtPowerOrBuilder> getLossAtPowerOrBuilderList() {
            return this.lossAtPower_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<LossSeriesAtSpeed> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            float f2 = this.speedMetersPerSecond_;
            int iComputeFloatSize = f2 != 0.0f ? CodedOutputStream.computeFloatSize(1, f2) + 0 : 0;
            for (int i3 = 0; i3 < this.lossAtPower_.size(); i3++) {
                iComputeFloatSize += CodedOutputStream.computeMessageSize(2, this.lossAtPower_.get(i3));
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeFloatSize;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.android.projection.proto.EnergyModel.LossSeriesAtSpeedOrBuilder
        public float getSpeedMetersPerSecond() {
            return this.speedMetersPerSecond_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iFloatToIntBits = Float.floatToIntBits(getSpeedMetersPerSecond()) + ((((getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY) * 37) + 1) * 53);
            if (getLossAtPowerCount() > 0) {
                iFloatToIntBits = getLossAtPowerList().hashCode() + m.D(iFloatToIntBits, 37, 2, 53);
            }
            int iHashCode = this.unknownFields.hashCode() + (iFloatToIntBits * 29);
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return EnergyModel.internal_static_energy_model_LossSeriesAtSpeed_fieldAccessorTable.ensureFieldAccessorsInitialized(LossSeriesAtSpeed.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new LossSeriesAtSpeed();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            float f2 = this.speedMetersPerSecond_;
            if (f2 != 0.0f) {
                codedOutputStream.writeFloat(1, f2);
            }
            for (int i2 = 0; i2 < this.lossAtPower_.size(); i2++) {
                codedOutputStream.writeMessage(2, this.lossAtPower_.get(i2));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements LossSeriesAtSpeedOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> lossAtPowerBuilder_;
            private List<LossAtPower> lossAtPower_;
            private float speedMetersPerSecond_;

            private void ensureLossAtPowerIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.lossAtPower_ = new ArrayList(this.lossAtPower_);
                    this.bitField0_ |= 1;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return EnergyModel.internal_static_energy_model_LossSeriesAtSpeed_descriptor;
            }

            private RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> getLossAtPowerFieldBuilder() {
                if (this.lossAtPowerBuilder_ == null) {
                    this.lossAtPowerBuilder_ = new RepeatedFieldBuilderV3<>(this.lossAtPower_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.lossAtPower_ = null;
                }
                return this.lossAtPowerBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getLossAtPowerFieldBuilder();
                }
            }

            public Builder addAllLossAtPower(Iterable<? extends LossAtPower> iterable) {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.lossAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureLossAtPowerIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.lossAtPower_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addLossAtPower(LossAtPower lossAtPower) {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.lossAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    lossAtPower.getClass();
                    ensureLossAtPowerIsMutable();
                    this.lossAtPower_.add(lossAtPower);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(lossAtPower);
                }
                return this;
            }

            public LossAtPower.Builder addLossAtPowerBuilder() {
                return (LossAtPower.Builder) getLossAtPowerFieldBuilder().addBuilder(LossAtPower.getDefaultInstance());
            }

            public Builder clearLossAtPower() {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.lossAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.lossAtPower_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder clearSpeedMetersPerSecond() {
                this.speedMetersPerSecond_ = 0.0f;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return EnergyModel.internal_static_energy_model_LossSeriesAtSpeed_descriptor;
            }

            @Override // com.google.android.projection.proto.EnergyModel.LossSeriesAtSpeedOrBuilder
            public LossAtPower getLossAtPower(int i2) {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.lossAtPowerBuilder_;
                return repeatedFieldBuilderV3 == null ? this.lossAtPower_.get(i2) : (LossAtPower) repeatedFieldBuilderV3.getMessage(i2);
            }

            public LossAtPower.Builder getLossAtPowerBuilder(int i2) {
                return (LossAtPower.Builder) getLossAtPowerFieldBuilder().getBuilder(i2);
            }

            public List<LossAtPower.Builder> getLossAtPowerBuilderList() {
                return getLossAtPowerFieldBuilder().getBuilderList();
            }

            @Override // com.google.android.projection.proto.EnergyModel.LossSeriesAtSpeedOrBuilder
            public int getLossAtPowerCount() {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.lossAtPowerBuilder_;
                return repeatedFieldBuilderV3 == null ? this.lossAtPower_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.google.android.projection.proto.EnergyModel.LossSeriesAtSpeedOrBuilder
            public List<LossAtPower> getLossAtPowerList() {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.lossAtPowerBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.lossAtPower_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.google.android.projection.proto.EnergyModel.LossSeriesAtSpeedOrBuilder
            public LossAtPowerOrBuilder getLossAtPowerOrBuilder(int i2) {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.lossAtPowerBuilder_;
                return repeatedFieldBuilderV3 == null ? this.lossAtPower_.get(i2) : (LossAtPowerOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i2);
            }

            @Override // com.google.android.projection.proto.EnergyModel.LossSeriesAtSpeedOrBuilder
            public List<? extends LossAtPowerOrBuilder> getLossAtPowerOrBuilderList() {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.lossAtPowerBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.lossAtPower_);
            }

            @Override // com.google.android.projection.proto.EnergyModel.LossSeriesAtSpeedOrBuilder
            public float getSpeedMetersPerSecond() {
                return this.speedMetersPerSecond_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return EnergyModel.internal_static_energy_model_LossSeriesAtSpeed_fieldAccessorTable.ensureFieldAccessorsInitialized(LossSeriesAtSpeed.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder removeLossAtPower(int i2) {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.lossAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureLossAtPowerIsMutable();
                    this.lossAtPower_.remove(i2);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i2);
                }
                return this;
            }

            public Builder setLossAtPower(int i2, LossAtPower lossAtPower) {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.lossAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    lossAtPower.getClass();
                    ensureLossAtPowerIsMutable();
                    this.lossAtPower_.set(i2, lossAtPower);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i2, lossAtPower);
                }
                return this;
            }

            public Builder setSpeedMetersPerSecond(float f2) {
                this.speedMetersPerSecond_ = f2;
                onChanged();
                return this;
            }

            private Builder() {
                this.lossAtPower_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LossSeriesAtSpeed build() {
                LossSeriesAtSpeed lossSeriesAtSpeedBuildPartial = buildPartial();
                if (lossSeriesAtSpeedBuildPartial.isInitialized()) {
                    return lossSeriesAtSpeedBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) lossSeriesAtSpeedBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public LossSeriesAtSpeed buildPartial() {
                LossSeriesAtSpeed lossSeriesAtSpeed = new LossSeriesAtSpeed(this);
                lossSeriesAtSpeed.speedMetersPerSecond_ = this.speedMetersPerSecond_;
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.lossAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.lossAtPower_ = Collections.unmodifiableList(this.lossAtPower_);
                        this.bitField0_ &= -2;
                    }
                    lossSeriesAtSpeed.lossAtPower_ = this.lossAtPower_;
                } else {
                    lossSeriesAtSpeed.lossAtPower_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return lossSeriesAtSpeed;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public LossSeriesAtSpeed getDefaultInstanceForType() {
                return LossSeriesAtSpeed.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            public LossAtPower.Builder addLossAtPowerBuilder(int i2) {
                return (LossAtPower.Builder) getLossAtPowerFieldBuilder().addBuilder(i2, LossAtPower.getDefaultInstance());
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.speedMetersPerSecond_ = 0.0f;
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.lossAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.lossAtPower_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.lossAtPower_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addLossAtPower(int i2, LossAtPower lossAtPower) {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.lossAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    lossAtPower.getClass();
                    ensureLossAtPowerIsMutable();
                    this.lossAtPower_.add(i2, lossAtPower);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i2, lossAtPower);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof LossSeriesAtSpeed) {
                    return mergeFrom((LossSeriesAtSpeed) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setLossAtPower(int i2, LossAtPower.Builder builder) {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.lossAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureLossAtPowerIsMutable();
                    this.lossAtPower_.set(i2, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i2, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(LossSeriesAtSpeed lossSeriesAtSpeed) {
                if (lossSeriesAtSpeed == LossSeriesAtSpeed.getDefaultInstance()) {
                    return this;
                }
                if (lossSeriesAtSpeed.getSpeedMetersPerSecond() != 0.0f) {
                    setSpeedMetersPerSecond(lossSeriesAtSpeed.getSpeedMetersPerSecond());
                }
                if (this.lossAtPowerBuilder_ == null) {
                    if (!lossSeriesAtSpeed.lossAtPower_.isEmpty()) {
                        if (this.lossAtPower_.isEmpty()) {
                            this.lossAtPower_ = lossSeriesAtSpeed.lossAtPower_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureLossAtPowerIsMutable();
                            this.lossAtPower_.addAll(lossSeriesAtSpeed.lossAtPower_);
                        }
                        onChanged();
                    }
                } else if (!lossSeriesAtSpeed.lossAtPower_.isEmpty()) {
                    if (this.lossAtPowerBuilder_.isEmpty()) {
                        this.lossAtPowerBuilder_.dispose();
                        this.lossAtPowerBuilder_ = null;
                        this.lossAtPower_ = lossSeriesAtSpeed.lossAtPower_;
                        this.bitField0_ &= -2;
                        this.lossAtPowerBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getLossAtPowerFieldBuilder() : null;
                    } else {
                        this.lossAtPowerBuilder_.addAllMessages(lossSeriesAtSpeed.lossAtPower_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) lossSeriesAtSpeed).unknownFields);
                onChanged();
                return this;
            }

            public Builder addLossAtPower(LossAtPower.Builder builder) {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.lossAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureLossAtPowerIsMutable();
                    this.lossAtPower_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addLossAtPower(int i2, LossAtPower.Builder builder) {
                RepeatedFieldBuilderV3<LossAtPower, LossAtPower.Builder, LossAtPowerOrBuilder> repeatedFieldBuilderV3 = this.lossAtPowerBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureLossAtPowerIsMutable();
                    this.lossAtPower_.add(i2, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i2, builder.build());
                }
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                LossSeriesAtSpeed lossSeriesAtSpeed = null;
                try {
                    try {
                        LossSeriesAtSpeed lossSeriesAtSpeed2 = (LossSeriesAtSpeed) LossSeriesAtSpeed.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (lossSeriesAtSpeed2 != null) {
                            mergeFrom(lossSeriesAtSpeed2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        LossSeriesAtSpeed lossSeriesAtSpeed3 = (LossSeriesAtSpeed) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            lossSeriesAtSpeed = lossSeriesAtSpeed3;
                            if (lossSeriesAtSpeed != null) {
                                mergeFrom(lossSeriesAtSpeed);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (lossSeriesAtSpeed != null) {
                        mergeFrom(lossSeriesAtSpeed);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(LossSeriesAtSpeed lossSeriesAtSpeed) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(lossSeriesAtSpeed);
        }

        public static LossSeriesAtSpeed parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private LossSeriesAtSpeed(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static LossSeriesAtSpeed parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (LossSeriesAtSpeed) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static LossSeriesAtSpeed parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public LossSeriesAtSpeed getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static LossSeriesAtSpeed parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private LossSeriesAtSpeed() {
            this.memoizedIsInitialized = (byte) -1;
            this.lossAtPower_ = Collections.emptyList();
        }

        public static LossSeriesAtSpeed parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static LossSeriesAtSpeed parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static LossSeriesAtSpeed parseFrom(InputStream inputStream) {
            return (LossSeriesAtSpeed) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private LossSeriesAtSpeed(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            boolean z3 = false;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 13) {
                                this.speedMetersPerSecond_ = codedInputStream.readFloat();
                            } else if (tag != 18) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                if (!(z3 & true)) {
                                    this.lossAtPower_ = new ArrayList();
                                    z3 |= true;
                                }
                                this.lossAtPower_.add((LossAtPower) codedInputStream.readMessage(LossAtPower.parser(), extensionRegistryLite));
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.lossAtPower_ = Collections.unmodifiableList(this.lossAtPower_);
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (z3 & true) {
                this.lossAtPower_ = Collections.unmodifiableList(this.lossAtPower_);
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static LossSeriesAtSpeed parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (LossSeriesAtSpeed) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static LossSeriesAtSpeed parseFrom(CodedInputStream codedInputStream) {
            return (LossSeriesAtSpeed) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static LossSeriesAtSpeed parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (LossSeriesAtSpeed) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface LossSeriesAtSpeedOrBuilder extends MessageOrBuilder {
        LossAtPower getLossAtPower(int i2);

        int getLossAtPowerCount();

        List<LossAtPower> getLossAtPowerList();

        LossAtPowerOrBuilder getLossAtPowerOrBuilder(int i2);

        List<? extends LossAtPowerOrBuilder> getLossAtPowerOrBuilderList();

        float getSpeedMetersPerSecond();
    }

    public static final class MaxRegenPower extends GeneratedMessageV3 implements MaxRegenPowerOrBuilder {
        private static final MaxRegenPower DEFAULT_INSTANCE = new MaxRegenPower();
        private static final Parser<MaxRegenPower> PARSER = new AbstractParser<MaxRegenPower>() { // from class: com.google.android.projection.proto.EnergyModel.MaxRegenPower.1
            @Override // com.google.protobuf.Parser
            public MaxRegenPower parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new MaxRegenPower(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int REGENERATION_RATE_AT_ENERGY_LEVEL_FIELD_NUMBER = 1;
        public static final int REGENERATION_RATE_AT_TIME_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private List<RegenerationRateAtEnergyLevel> regenerationRateAtEnergyLevel_;
        private List<RegenerationRateAtTime> regenerationRateAtTime_;

        public static MaxRegenPower getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return EnergyModel.internal_static_energy_model_MaxRegenPower_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MaxRegenPower parseDelimitedFrom(InputStream inputStream) {
            return (MaxRegenPower) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static MaxRegenPower parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<MaxRegenPower> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MaxRegenPower)) {
                return super.equals(obj);
            }
            MaxRegenPower maxRegenPower = (MaxRegenPower) obj;
            return getRegenerationRateAtEnergyLevelList().equals(maxRegenPower.getRegenerationRateAtEnergyLevelList()) && getRegenerationRateAtTimeList().equals(maxRegenPower.getRegenerationRateAtTimeList()) && this.unknownFields.equals(maxRegenPower.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<MaxRegenPower> getParserForType() {
            return PARSER;
        }

        @Override // com.google.android.projection.proto.EnergyModel.MaxRegenPowerOrBuilder
        public RegenerationRateAtEnergyLevel getRegenerationRateAtEnergyLevel(int i2) {
            return this.regenerationRateAtEnergyLevel_.get(i2);
        }

        @Override // com.google.android.projection.proto.EnergyModel.MaxRegenPowerOrBuilder
        public int getRegenerationRateAtEnergyLevelCount() {
            return this.regenerationRateAtEnergyLevel_.size();
        }

        @Override // com.google.android.projection.proto.EnergyModel.MaxRegenPowerOrBuilder
        public List<RegenerationRateAtEnergyLevel> getRegenerationRateAtEnergyLevelList() {
            return this.regenerationRateAtEnergyLevel_;
        }

        @Override // com.google.android.projection.proto.EnergyModel.MaxRegenPowerOrBuilder
        public RegenerationRateAtEnergyLevelOrBuilder getRegenerationRateAtEnergyLevelOrBuilder(int i2) {
            return this.regenerationRateAtEnergyLevel_.get(i2);
        }

        @Override // com.google.android.projection.proto.EnergyModel.MaxRegenPowerOrBuilder
        public List<? extends RegenerationRateAtEnergyLevelOrBuilder> getRegenerationRateAtEnergyLevelOrBuilderList() {
            return this.regenerationRateAtEnergyLevel_;
        }

        @Override // com.google.android.projection.proto.EnergyModel.MaxRegenPowerOrBuilder
        public RegenerationRateAtTime getRegenerationRateAtTime(int i2) {
            return this.regenerationRateAtTime_.get(i2);
        }

        @Override // com.google.android.projection.proto.EnergyModel.MaxRegenPowerOrBuilder
        public int getRegenerationRateAtTimeCount() {
            return this.regenerationRateAtTime_.size();
        }

        @Override // com.google.android.projection.proto.EnergyModel.MaxRegenPowerOrBuilder
        public List<RegenerationRateAtTime> getRegenerationRateAtTimeList() {
            return this.regenerationRateAtTime_;
        }

        @Override // com.google.android.projection.proto.EnergyModel.MaxRegenPowerOrBuilder
        public RegenerationRateAtTimeOrBuilder getRegenerationRateAtTimeOrBuilder(int i2) {
            return this.regenerationRateAtTime_.get(i2);
        }

        @Override // com.google.android.projection.proto.EnergyModel.MaxRegenPowerOrBuilder
        public List<? extends RegenerationRateAtTimeOrBuilder> getRegenerationRateAtTimeOrBuilderList() {
            return this.regenerationRateAtTime_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int iComputeMessageSize = 0;
            for (int i3 = 0; i3 < this.regenerationRateAtEnergyLevel_.size(); i3++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(1, this.regenerationRateAtEnergyLevel_.get(i3));
            }
            for (int i4 = 0; i4 < this.regenerationRateAtTime_.size(); i4++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(2, this.regenerationRateAtTime_.get(i4));
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeMessageSize;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY;
            if (getRegenerationRateAtEnergyLevelCount() > 0) {
                iHashCode = m.D(iHashCode, 37, 1, 53) + getRegenerationRateAtEnergyLevelList().hashCode();
            }
            if (getRegenerationRateAtTimeCount() > 0) {
                iHashCode = m.D(iHashCode, 37, 2, 53) + getRegenerationRateAtTimeList().hashCode();
            }
            int iHashCode2 = this.unknownFields.hashCode() + (iHashCode * 29);
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return EnergyModel.internal_static_energy_model_MaxRegenPower_fieldAccessorTable.ensureFieldAccessorsInitialized(MaxRegenPower.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new MaxRegenPower();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            for (int i2 = 0; i2 < this.regenerationRateAtEnergyLevel_.size(); i2++) {
                codedOutputStream.writeMessage(1, this.regenerationRateAtEnergyLevel_.get(i2));
            }
            for (int i3 = 0; i3 < this.regenerationRateAtTime_.size(); i3++) {
                codedOutputStream.writeMessage(2, this.regenerationRateAtTime_.get(i3));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements MaxRegenPowerOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilderV3<RegenerationRateAtEnergyLevel, RegenerationRateAtEnergyLevel.Builder, RegenerationRateAtEnergyLevelOrBuilder> regenerationRateAtEnergyLevelBuilder_;
            private List<RegenerationRateAtEnergyLevel> regenerationRateAtEnergyLevel_;
            private RepeatedFieldBuilderV3<RegenerationRateAtTime, RegenerationRateAtTime.Builder, RegenerationRateAtTimeOrBuilder> regenerationRateAtTimeBuilder_;
            private List<RegenerationRateAtTime> regenerationRateAtTime_;

            private void ensureRegenerationRateAtEnergyLevelIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.regenerationRateAtEnergyLevel_ = new ArrayList(this.regenerationRateAtEnergyLevel_);
                    this.bitField0_ |= 1;
                }
            }

            private void ensureRegenerationRateAtTimeIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.regenerationRateAtTime_ = new ArrayList(this.regenerationRateAtTime_);
                    this.bitField0_ |= 2;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return EnergyModel.internal_static_energy_model_MaxRegenPower_descriptor;
            }

            private RepeatedFieldBuilderV3<RegenerationRateAtEnergyLevel, RegenerationRateAtEnergyLevel.Builder, RegenerationRateAtEnergyLevelOrBuilder> getRegenerationRateAtEnergyLevelFieldBuilder() {
                if (this.regenerationRateAtEnergyLevelBuilder_ == null) {
                    this.regenerationRateAtEnergyLevelBuilder_ = new RepeatedFieldBuilderV3<>(this.regenerationRateAtEnergyLevel_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.regenerationRateAtEnergyLevel_ = null;
                }
                return this.regenerationRateAtEnergyLevelBuilder_;
            }

            private RepeatedFieldBuilderV3<RegenerationRateAtTime, RegenerationRateAtTime.Builder, RegenerationRateAtTimeOrBuilder> getRegenerationRateAtTimeFieldBuilder() {
                if (this.regenerationRateAtTimeBuilder_ == null) {
                    this.regenerationRateAtTimeBuilder_ = new RepeatedFieldBuilderV3<>(this.regenerationRateAtTime_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.regenerationRateAtTime_ = null;
                }
                return this.regenerationRateAtTimeBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getRegenerationRateAtEnergyLevelFieldBuilder();
                    getRegenerationRateAtTimeFieldBuilder();
                }
            }

            public Builder addAllRegenerationRateAtEnergyLevel(Iterable<? extends RegenerationRateAtEnergyLevel> iterable) {
                RepeatedFieldBuilderV3<RegenerationRateAtEnergyLevel, RegenerationRateAtEnergyLevel.Builder, RegenerationRateAtEnergyLevelOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtEnergyLevelBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureRegenerationRateAtEnergyLevelIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.regenerationRateAtEnergyLevel_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addAllRegenerationRateAtTime(Iterable<? extends RegenerationRateAtTime> iterable) {
                RepeatedFieldBuilderV3<RegenerationRateAtTime, RegenerationRateAtTime.Builder, RegenerationRateAtTimeOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtTimeBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureRegenerationRateAtTimeIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.regenerationRateAtTime_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addRegenerationRateAtEnergyLevel(RegenerationRateAtEnergyLevel regenerationRateAtEnergyLevel) {
                RepeatedFieldBuilderV3<RegenerationRateAtEnergyLevel, RegenerationRateAtEnergyLevel.Builder, RegenerationRateAtEnergyLevelOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtEnergyLevelBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    regenerationRateAtEnergyLevel.getClass();
                    ensureRegenerationRateAtEnergyLevelIsMutable();
                    this.regenerationRateAtEnergyLevel_.add(regenerationRateAtEnergyLevel);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(regenerationRateAtEnergyLevel);
                }
                return this;
            }

            public RegenerationRateAtEnergyLevel.Builder addRegenerationRateAtEnergyLevelBuilder() {
                return (RegenerationRateAtEnergyLevel.Builder) getRegenerationRateAtEnergyLevelFieldBuilder().addBuilder(RegenerationRateAtEnergyLevel.getDefaultInstance());
            }

            public Builder addRegenerationRateAtTime(RegenerationRateAtTime regenerationRateAtTime) {
                RepeatedFieldBuilderV3<RegenerationRateAtTime, RegenerationRateAtTime.Builder, RegenerationRateAtTimeOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtTimeBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    regenerationRateAtTime.getClass();
                    ensureRegenerationRateAtTimeIsMutable();
                    this.regenerationRateAtTime_.add(regenerationRateAtTime);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(regenerationRateAtTime);
                }
                return this;
            }

            public RegenerationRateAtTime.Builder addRegenerationRateAtTimeBuilder() {
                return (RegenerationRateAtTime.Builder) getRegenerationRateAtTimeFieldBuilder().addBuilder(RegenerationRateAtTime.getDefaultInstance());
            }

            public Builder clearRegenerationRateAtEnergyLevel() {
                RepeatedFieldBuilderV3<RegenerationRateAtEnergyLevel, RegenerationRateAtEnergyLevel.Builder, RegenerationRateAtEnergyLevelOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtEnergyLevelBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.regenerationRateAtEnergyLevel_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder clearRegenerationRateAtTime() {
                RepeatedFieldBuilderV3<RegenerationRateAtTime, RegenerationRateAtTime.Builder, RegenerationRateAtTimeOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtTimeBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.regenerationRateAtTime_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return EnergyModel.internal_static_energy_model_MaxRegenPower_descriptor;
            }

            @Override // com.google.android.projection.proto.EnergyModel.MaxRegenPowerOrBuilder
            public RegenerationRateAtEnergyLevel getRegenerationRateAtEnergyLevel(int i2) {
                RepeatedFieldBuilderV3<RegenerationRateAtEnergyLevel, RegenerationRateAtEnergyLevel.Builder, RegenerationRateAtEnergyLevelOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtEnergyLevelBuilder_;
                return repeatedFieldBuilderV3 == null ? this.regenerationRateAtEnergyLevel_.get(i2) : (RegenerationRateAtEnergyLevel) repeatedFieldBuilderV3.getMessage(i2);
            }

            public RegenerationRateAtEnergyLevel.Builder getRegenerationRateAtEnergyLevelBuilder(int i2) {
                return (RegenerationRateAtEnergyLevel.Builder) getRegenerationRateAtEnergyLevelFieldBuilder().getBuilder(i2);
            }

            public List<RegenerationRateAtEnergyLevel.Builder> getRegenerationRateAtEnergyLevelBuilderList() {
                return getRegenerationRateAtEnergyLevelFieldBuilder().getBuilderList();
            }

            @Override // com.google.android.projection.proto.EnergyModel.MaxRegenPowerOrBuilder
            public int getRegenerationRateAtEnergyLevelCount() {
                RepeatedFieldBuilderV3<RegenerationRateAtEnergyLevel, RegenerationRateAtEnergyLevel.Builder, RegenerationRateAtEnergyLevelOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtEnergyLevelBuilder_;
                return repeatedFieldBuilderV3 == null ? this.regenerationRateAtEnergyLevel_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.google.android.projection.proto.EnergyModel.MaxRegenPowerOrBuilder
            public List<RegenerationRateAtEnergyLevel> getRegenerationRateAtEnergyLevelList() {
                RepeatedFieldBuilderV3<RegenerationRateAtEnergyLevel, RegenerationRateAtEnergyLevel.Builder, RegenerationRateAtEnergyLevelOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtEnergyLevelBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.regenerationRateAtEnergyLevel_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.google.android.projection.proto.EnergyModel.MaxRegenPowerOrBuilder
            public RegenerationRateAtEnergyLevelOrBuilder getRegenerationRateAtEnergyLevelOrBuilder(int i2) {
                RepeatedFieldBuilderV3<RegenerationRateAtEnergyLevel, RegenerationRateAtEnergyLevel.Builder, RegenerationRateAtEnergyLevelOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtEnergyLevelBuilder_;
                return repeatedFieldBuilderV3 == null ? this.regenerationRateAtEnergyLevel_.get(i2) : (RegenerationRateAtEnergyLevelOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i2);
            }

            @Override // com.google.android.projection.proto.EnergyModel.MaxRegenPowerOrBuilder
            public List<? extends RegenerationRateAtEnergyLevelOrBuilder> getRegenerationRateAtEnergyLevelOrBuilderList() {
                RepeatedFieldBuilderV3<RegenerationRateAtEnergyLevel, RegenerationRateAtEnergyLevel.Builder, RegenerationRateAtEnergyLevelOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtEnergyLevelBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.regenerationRateAtEnergyLevel_);
            }

            @Override // com.google.android.projection.proto.EnergyModel.MaxRegenPowerOrBuilder
            public RegenerationRateAtTime getRegenerationRateAtTime(int i2) {
                RepeatedFieldBuilderV3<RegenerationRateAtTime, RegenerationRateAtTime.Builder, RegenerationRateAtTimeOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtTimeBuilder_;
                return repeatedFieldBuilderV3 == null ? this.regenerationRateAtTime_.get(i2) : (RegenerationRateAtTime) repeatedFieldBuilderV3.getMessage(i2);
            }

            public RegenerationRateAtTime.Builder getRegenerationRateAtTimeBuilder(int i2) {
                return (RegenerationRateAtTime.Builder) getRegenerationRateAtTimeFieldBuilder().getBuilder(i2);
            }

            public List<RegenerationRateAtTime.Builder> getRegenerationRateAtTimeBuilderList() {
                return getRegenerationRateAtTimeFieldBuilder().getBuilderList();
            }

            @Override // com.google.android.projection.proto.EnergyModel.MaxRegenPowerOrBuilder
            public int getRegenerationRateAtTimeCount() {
                RepeatedFieldBuilderV3<RegenerationRateAtTime, RegenerationRateAtTime.Builder, RegenerationRateAtTimeOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtTimeBuilder_;
                return repeatedFieldBuilderV3 == null ? this.regenerationRateAtTime_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.google.android.projection.proto.EnergyModel.MaxRegenPowerOrBuilder
            public List<RegenerationRateAtTime> getRegenerationRateAtTimeList() {
                RepeatedFieldBuilderV3<RegenerationRateAtTime, RegenerationRateAtTime.Builder, RegenerationRateAtTimeOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtTimeBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.regenerationRateAtTime_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.google.android.projection.proto.EnergyModel.MaxRegenPowerOrBuilder
            public RegenerationRateAtTimeOrBuilder getRegenerationRateAtTimeOrBuilder(int i2) {
                RepeatedFieldBuilderV3<RegenerationRateAtTime, RegenerationRateAtTime.Builder, RegenerationRateAtTimeOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtTimeBuilder_;
                return repeatedFieldBuilderV3 == null ? this.regenerationRateAtTime_.get(i2) : (RegenerationRateAtTimeOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i2);
            }

            @Override // com.google.android.projection.proto.EnergyModel.MaxRegenPowerOrBuilder
            public List<? extends RegenerationRateAtTimeOrBuilder> getRegenerationRateAtTimeOrBuilderList() {
                RepeatedFieldBuilderV3<RegenerationRateAtTime, RegenerationRateAtTime.Builder, RegenerationRateAtTimeOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtTimeBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.regenerationRateAtTime_);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return EnergyModel.internal_static_energy_model_MaxRegenPower_fieldAccessorTable.ensureFieldAccessorsInitialized(MaxRegenPower.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder removeRegenerationRateAtEnergyLevel(int i2) {
                RepeatedFieldBuilderV3<RegenerationRateAtEnergyLevel, RegenerationRateAtEnergyLevel.Builder, RegenerationRateAtEnergyLevelOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtEnergyLevelBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureRegenerationRateAtEnergyLevelIsMutable();
                    this.regenerationRateAtEnergyLevel_.remove(i2);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i2);
                }
                return this;
            }

            public Builder removeRegenerationRateAtTime(int i2) {
                RepeatedFieldBuilderV3<RegenerationRateAtTime, RegenerationRateAtTime.Builder, RegenerationRateAtTimeOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtTimeBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureRegenerationRateAtTimeIsMutable();
                    this.regenerationRateAtTime_.remove(i2);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i2);
                }
                return this;
            }

            public Builder setRegenerationRateAtEnergyLevel(int i2, RegenerationRateAtEnergyLevel regenerationRateAtEnergyLevel) {
                RepeatedFieldBuilderV3<RegenerationRateAtEnergyLevel, RegenerationRateAtEnergyLevel.Builder, RegenerationRateAtEnergyLevelOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtEnergyLevelBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    regenerationRateAtEnergyLevel.getClass();
                    ensureRegenerationRateAtEnergyLevelIsMutable();
                    this.regenerationRateAtEnergyLevel_.set(i2, regenerationRateAtEnergyLevel);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i2, regenerationRateAtEnergyLevel);
                }
                return this;
            }

            public Builder setRegenerationRateAtTime(int i2, RegenerationRateAtTime regenerationRateAtTime) {
                RepeatedFieldBuilderV3<RegenerationRateAtTime, RegenerationRateAtTime.Builder, RegenerationRateAtTimeOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtTimeBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    regenerationRateAtTime.getClass();
                    ensureRegenerationRateAtTimeIsMutable();
                    this.regenerationRateAtTime_.set(i2, regenerationRateAtTime);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i2, regenerationRateAtTime);
                }
                return this;
            }

            private Builder() {
                this.regenerationRateAtEnergyLevel_ = Collections.emptyList();
                this.regenerationRateAtTime_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MaxRegenPower build() {
                MaxRegenPower maxRegenPowerBuildPartial = buildPartial();
                if (maxRegenPowerBuildPartial.isInitialized()) {
                    return maxRegenPowerBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) maxRegenPowerBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public MaxRegenPower buildPartial() {
                MaxRegenPower maxRegenPower = new MaxRegenPower(this);
                int i2 = this.bitField0_;
                RepeatedFieldBuilderV3<RegenerationRateAtEnergyLevel, RegenerationRateAtEnergyLevel.Builder, RegenerationRateAtEnergyLevelOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtEnergyLevelBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((i2 & 1) != 0) {
                        this.regenerationRateAtEnergyLevel_ = Collections.unmodifiableList(this.regenerationRateAtEnergyLevel_);
                        this.bitField0_ &= -2;
                    }
                    maxRegenPower.regenerationRateAtEnergyLevel_ = this.regenerationRateAtEnergyLevel_;
                } else {
                    maxRegenPower.regenerationRateAtEnergyLevel_ = repeatedFieldBuilderV3.build();
                }
                RepeatedFieldBuilderV3<RegenerationRateAtTime, RegenerationRateAtTime.Builder, RegenerationRateAtTimeOrBuilder> repeatedFieldBuilderV4 = this.regenerationRateAtTimeBuilder_;
                if (repeatedFieldBuilderV4 == null) {
                    if ((this.bitField0_ & 2) != 0) {
                        this.regenerationRateAtTime_ = Collections.unmodifiableList(this.regenerationRateAtTime_);
                        this.bitField0_ &= -3;
                    }
                    maxRegenPower.regenerationRateAtTime_ = this.regenerationRateAtTime_;
                } else {
                    maxRegenPower.regenerationRateAtTime_ = repeatedFieldBuilderV4.build();
                }
                onBuilt();
                return maxRegenPower;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public MaxRegenPower getDefaultInstanceForType() {
                return MaxRegenPower.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            public RegenerationRateAtEnergyLevel.Builder addRegenerationRateAtEnergyLevelBuilder(int i2) {
                return (RegenerationRateAtEnergyLevel.Builder) getRegenerationRateAtEnergyLevelFieldBuilder().addBuilder(i2, RegenerationRateAtEnergyLevel.getDefaultInstance());
            }

            public RegenerationRateAtTime.Builder addRegenerationRateAtTimeBuilder(int i2) {
                return (RegenerationRateAtTime.Builder) getRegenerationRateAtTimeFieldBuilder().addBuilder(i2, RegenerationRateAtTime.getDefaultInstance());
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                RepeatedFieldBuilderV3<RegenerationRateAtEnergyLevel, RegenerationRateAtEnergyLevel.Builder, RegenerationRateAtEnergyLevelOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtEnergyLevelBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.regenerationRateAtEnergyLevel_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                RepeatedFieldBuilderV3<RegenerationRateAtTime, RegenerationRateAtTime.Builder, RegenerationRateAtTimeOrBuilder> repeatedFieldBuilderV4 = this.regenerationRateAtTimeBuilder_;
                if (repeatedFieldBuilderV4 == null) {
                    this.regenerationRateAtTime_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    repeatedFieldBuilderV4.clear();
                }
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.regenerationRateAtEnergyLevel_ = Collections.emptyList();
                this.regenerationRateAtTime_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addRegenerationRateAtEnergyLevel(int i2, RegenerationRateAtEnergyLevel regenerationRateAtEnergyLevel) {
                RepeatedFieldBuilderV3<RegenerationRateAtEnergyLevel, RegenerationRateAtEnergyLevel.Builder, RegenerationRateAtEnergyLevelOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtEnergyLevelBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    regenerationRateAtEnergyLevel.getClass();
                    ensureRegenerationRateAtEnergyLevelIsMutable();
                    this.regenerationRateAtEnergyLevel_.add(i2, regenerationRateAtEnergyLevel);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i2, regenerationRateAtEnergyLevel);
                }
                return this;
            }

            public Builder addRegenerationRateAtTime(int i2, RegenerationRateAtTime regenerationRateAtTime) {
                RepeatedFieldBuilderV3<RegenerationRateAtTime, RegenerationRateAtTime.Builder, RegenerationRateAtTimeOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtTimeBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    regenerationRateAtTime.getClass();
                    ensureRegenerationRateAtTimeIsMutable();
                    this.regenerationRateAtTime_.add(i2, regenerationRateAtTime);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i2, regenerationRateAtTime);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof MaxRegenPower) {
                    return mergeFrom((MaxRegenPower) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setRegenerationRateAtEnergyLevel(int i2, RegenerationRateAtEnergyLevel.Builder builder) {
                RepeatedFieldBuilderV3<RegenerationRateAtEnergyLevel, RegenerationRateAtEnergyLevel.Builder, RegenerationRateAtEnergyLevelOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtEnergyLevelBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureRegenerationRateAtEnergyLevelIsMutable();
                    this.regenerationRateAtEnergyLevel_.set(i2, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i2, builder.build());
                }
                return this;
            }

            public Builder setRegenerationRateAtTime(int i2, RegenerationRateAtTime.Builder builder) {
                RepeatedFieldBuilderV3<RegenerationRateAtTime, RegenerationRateAtTime.Builder, RegenerationRateAtTimeOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtTimeBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureRegenerationRateAtTimeIsMutable();
                    this.regenerationRateAtTime_.set(i2, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i2, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(MaxRegenPower maxRegenPower) {
                if (maxRegenPower == MaxRegenPower.getDefaultInstance()) {
                    return this;
                }
                if (this.regenerationRateAtEnergyLevelBuilder_ == null) {
                    if (!maxRegenPower.regenerationRateAtEnergyLevel_.isEmpty()) {
                        if (this.regenerationRateAtEnergyLevel_.isEmpty()) {
                            this.regenerationRateAtEnergyLevel_ = maxRegenPower.regenerationRateAtEnergyLevel_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureRegenerationRateAtEnergyLevelIsMutable();
                            this.regenerationRateAtEnergyLevel_.addAll(maxRegenPower.regenerationRateAtEnergyLevel_);
                        }
                        onChanged();
                    }
                } else if (!maxRegenPower.regenerationRateAtEnergyLevel_.isEmpty()) {
                    if (this.regenerationRateAtEnergyLevelBuilder_.isEmpty()) {
                        this.regenerationRateAtEnergyLevelBuilder_.dispose();
                        this.regenerationRateAtEnergyLevelBuilder_ = null;
                        this.regenerationRateAtEnergyLevel_ = maxRegenPower.regenerationRateAtEnergyLevel_;
                        this.bitField0_ &= -2;
                        this.regenerationRateAtEnergyLevelBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getRegenerationRateAtEnergyLevelFieldBuilder() : null;
                    } else {
                        this.regenerationRateAtEnergyLevelBuilder_.addAllMessages(maxRegenPower.regenerationRateAtEnergyLevel_);
                    }
                }
                if (this.regenerationRateAtTimeBuilder_ == null) {
                    if (!maxRegenPower.regenerationRateAtTime_.isEmpty()) {
                        if (this.regenerationRateAtTime_.isEmpty()) {
                            this.regenerationRateAtTime_ = maxRegenPower.regenerationRateAtTime_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureRegenerationRateAtTimeIsMutable();
                            this.regenerationRateAtTime_.addAll(maxRegenPower.regenerationRateAtTime_);
                        }
                        onChanged();
                    }
                } else if (!maxRegenPower.regenerationRateAtTime_.isEmpty()) {
                    if (this.regenerationRateAtTimeBuilder_.isEmpty()) {
                        this.regenerationRateAtTimeBuilder_.dispose();
                        this.regenerationRateAtTimeBuilder_ = null;
                        this.regenerationRateAtTime_ = maxRegenPower.regenerationRateAtTime_;
                        this.bitField0_ &= -3;
                        this.regenerationRateAtTimeBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getRegenerationRateAtTimeFieldBuilder() : null;
                    } else {
                        this.regenerationRateAtTimeBuilder_.addAllMessages(maxRegenPower.regenerationRateAtTime_);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) maxRegenPower).unknownFields);
                onChanged();
                return this;
            }

            public Builder addRegenerationRateAtEnergyLevel(RegenerationRateAtEnergyLevel.Builder builder) {
                RepeatedFieldBuilderV3<RegenerationRateAtEnergyLevel, RegenerationRateAtEnergyLevel.Builder, RegenerationRateAtEnergyLevelOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtEnergyLevelBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureRegenerationRateAtEnergyLevelIsMutable();
                    this.regenerationRateAtEnergyLevel_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addRegenerationRateAtTime(RegenerationRateAtTime.Builder builder) {
                RepeatedFieldBuilderV3<RegenerationRateAtTime, RegenerationRateAtTime.Builder, RegenerationRateAtTimeOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtTimeBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureRegenerationRateAtTimeIsMutable();
                    this.regenerationRateAtTime_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addRegenerationRateAtEnergyLevel(int i2, RegenerationRateAtEnergyLevel.Builder builder) {
                RepeatedFieldBuilderV3<RegenerationRateAtEnergyLevel, RegenerationRateAtEnergyLevel.Builder, RegenerationRateAtEnergyLevelOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtEnergyLevelBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureRegenerationRateAtEnergyLevelIsMutable();
                    this.regenerationRateAtEnergyLevel_.add(i2, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i2, builder.build());
                }
                return this;
            }

            public Builder addRegenerationRateAtTime(int i2, RegenerationRateAtTime.Builder builder) {
                RepeatedFieldBuilderV3<RegenerationRateAtTime, RegenerationRateAtTime.Builder, RegenerationRateAtTimeOrBuilder> repeatedFieldBuilderV3 = this.regenerationRateAtTimeBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureRegenerationRateAtTimeIsMutable();
                    this.regenerationRateAtTime_.add(i2, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i2, builder.build());
                }
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                MaxRegenPower maxRegenPower = null;
                try {
                    try {
                        MaxRegenPower maxRegenPower2 = (MaxRegenPower) MaxRegenPower.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (maxRegenPower2 != null) {
                            mergeFrom(maxRegenPower2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        MaxRegenPower maxRegenPower3 = (MaxRegenPower) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            maxRegenPower = maxRegenPower3;
                            if (maxRegenPower != null) {
                                mergeFrom(maxRegenPower);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (maxRegenPower != null) {
                        mergeFrom(maxRegenPower);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(MaxRegenPower maxRegenPower) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(maxRegenPower);
        }

        public static MaxRegenPower parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private MaxRegenPower(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MaxRegenPower parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (MaxRegenPower) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static MaxRegenPower parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public MaxRegenPower getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static MaxRegenPower parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private MaxRegenPower() {
            this.memoizedIsInitialized = (byte) -1;
            this.regenerationRateAtEnergyLevel_ = Collections.emptyList();
            this.regenerationRateAtTime_ = Collections.emptyList();
        }

        public static MaxRegenPower parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static MaxRegenPower parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static MaxRegenPower parseFrom(InputStream inputStream) {
            return (MaxRegenPower) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private MaxRegenPower(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            int i2 = 0;
            while (!z2) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 10) {
                                    if ((i2 & 1) == 0) {
                                        this.regenerationRateAtEnergyLevel_ = new ArrayList();
                                        i2 |= 1;
                                    }
                                    this.regenerationRateAtEnergyLevel_.add((RegenerationRateAtEnergyLevel) codedInputStream.readMessage(RegenerationRateAtEnergyLevel.parser(), extensionRegistryLite));
                                } else if (tag != 18) {
                                    if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                    }
                                } else {
                                    if ((i2 & 2) == 0) {
                                        this.regenerationRateAtTime_ = new ArrayList();
                                        i2 |= 2;
                                    }
                                    this.regenerationRateAtTime_.add((RegenerationRateAtTime) codedInputStream.readMessage(RegenerationRateAtTime.parser(), extensionRegistryLite));
                                }
                            }
                            z2 = true;
                        } catch (InvalidProtocolBufferException e2) {
                            throw e2.setUnfinishedMessage(this);
                        }
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    if ((i2 & 1) != 0) {
                        this.regenerationRateAtEnergyLevel_ = Collections.unmodifiableList(this.regenerationRateAtEnergyLevel_);
                    }
                    if ((i2 & 2) != 0) {
                        this.regenerationRateAtTime_ = Collections.unmodifiableList(this.regenerationRateAtTime_);
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if ((i2 & 1) != 0) {
                this.regenerationRateAtEnergyLevel_ = Collections.unmodifiableList(this.regenerationRateAtEnergyLevel_);
            }
            if ((i2 & 2) != 0) {
                this.regenerationRateAtTime_ = Collections.unmodifiableList(this.regenerationRateAtTime_);
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static MaxRegenPower parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (MaxRegenPower) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static MaxRegenPower parseFrom(CodedInputStream codedInputStream) {
            return (MaxRegenPower) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static MaxRegenPower parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (MaxRegenPower) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface MaxRegenPowerOrBuilder extends MessageOrBuilder {
        RegenerationRateAtEnergyLevel getRegenerationRateAtEnergyLevel(int i2);

        int getRegenerationRateAtEnergyLevelCount();

        List<RegenerationRateAtEnergyLevel> getRegenerationRateAtEnergyLevelList();

        RegenerationRateAtEnergyLevelOrBuilder getRegenerationRateAtEnergyLevelOrBuilder(int i2);

        List<? extends RegenerationRateAtEnergyLevelOrBuilder> getRegenerationRateAtEnergyLevelOrBuilderList();

        RegenerationRateAtTime getRegenerationRateAtTime(int i2);

        int getRegenerationRateAtTimeCount();

        List<RegenerationRateAtTime> getRegenerationRateAtTimeList();

        RegenerationRateAtTimeOrBuilder getRegenerationRateAtTimeOrBuilder(int i2);

        List<? extends RegenerationRateAtTimeOrBuilder> getRegenerationRateAtTimeOrBuilderList();
    }

    public static final class RegenerationRateAtEnergyLevel extends GeneratedMessageV3 implements RegenerationRateAtEnergyLevelOrBuilder {
        public static final int ENERGY_LEVEL_WH_FIELD_NUMBER = 1;
        public static final int REGENERATION_RATE_WATTS_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int energyLevelWh_;
        private byte memoizedIsInitialized;
        private int regenerationRateWatts_;
        private static final RegenerationRateAtEnergyLevel DEFAULT_INSTANCE = new RegenerationRateAtEnergyLevel();
        private static final Parser<RegenerationRateAtEnergyLevel> PARSER = new AbstractParser<RegenerationRateAtEnergyLevel>() { // from class: com.google.android.projection.proto.EnergyModel.RegenerationRateAtEnergyLevel.1
            @Override // com.google.protobuf.Parser
            public RegenerationRateAtEnergyLevel parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new RegenerationRateAtEnergyLevel(codedInputStream, extensionRegistryLite);
            }
        };

        public static RegenerationRateAtEnergyLevel getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return EnergyModel.internal_static_energy_model_RegenerationRateAtEnergyLevel_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static RegenerationRateAtEnergyLevel parseDelimitedFrom(InputStream inputStream) {
            return (RegenerationRateAtEnergyLevel) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static RegenerationRateAtEnergyLevel parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<RegenerationRateAtEnergyLevel> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof RegenerationRateAtEnergyLevel)) {
                return super.equals(obj);
            }
            RegenerationRateAtEnergyLevel regenerationRateAtEnergyLevel = (RegenerationRateAtEnergyLevel) obj;
            return getEnergyLevelWh() == regenerationRateAtEnergyLevel.getEnergyLevelWh() && getRegenerationRateWatts() == regenerationRateAtEnergyLevel.getRegenerationRateWatts() && this.unknownFields.equals(regenerationRateAtEnergyLevel.unknownFields);
        }

        @Override // com.google.android.projection.proto.EnergyModel.RegenerationRateAtEnergyLevelOrBuilder
        public int getEnergyLevelWh() {
            return this.energyLevelWh_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<RegenerationRateAtEnergyLevel> getParserForType() {
            return PARSER;
        }

        @Override // com.google.android.projection.proto.EnergyModel.RegenerationRateAtEnergyLevelOrBuilder
        public int getRegenerationRateWatts() {
            return this.regenerationRateWatts_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int i3 = this.energyLevelWh_;
            int iComputeInt32Size = i3 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i3) : 0;
            int i4 = this.regenerationRateWatts_;
            if (i4 != 0) {
                iComputeInt32Size += CodedOutputStream.computeUInt32Size(2, i4);
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeInt32Size;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = this.unknownFields.hashCode() + ((getRegenerationRateWatts() + ((((getEnergyLevelWh() + ((((getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY) * 37) + 1) * 53)) * 37) + 2) * 53)) * 29);
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return EnergyModel.internal_static_energy_model_RegenerationRateAtEnergyLevel_fieldAccessorTable.ensureFieldAccessorsInitialized(RegenerationRateAtEnergyLevel.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new RegenerationRateAtEnergyLevel();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            int i2 = this.energyLevelWh_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(1, i2);
            }
            int i3 = this.regenerationRateWatts_;
            if (i3 != 0) {
                codedOutputStream.writeUInt32(2, i3);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements RegenerationRateAtEnergyLevelOrBuilder {
            private int energyLevelWh_;
            private int regenerationRateWatts_;

            public static final Descriptors.Descriptor getDescriptor() {
                return EnergyModel.internal_static_energy_model_RegenerationRateAtEnergyLevel_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearEnergyLevelWh() {
                this.energyLevelWh_ = 0;
                onChanged();
                return this;
            }

            public Builder clearRegenerationRateWatts() {
                this.regenerationRateWatts_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return EnergyModel.internal_static_energy_model_RegenerationRateAtEnergyLevel_descriptor;
            }

            @Override // com.google.android.projection.proto.EnergyModel.RegenerationRateAtEnergyLevelOrBuilder
            public int getEnergyLevelWh() {
                return this.energyLevelWh_;
            }

            @Override // com.google.android.projection.proto.EnergyModel.RegenerationRateAtEnergyLevelOrBuilder
            public int getRegenerationRateWatts() {
                return this.regenerationRateWatts_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return EnergyModel.internal_static_energy_model_RegenerationRateAtEnergyLevel_fieldAccessorTable.ensureFieldAccessorsInitialized(RegenerationRateAtEnergyLevel.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setEnergyLevelWh(int i2) {
                this.energyLevelWh_ = i2;
                onChanged();
                return this;
            }

            public Builder setRegenerationRateWatts(int i2) {
                this.regenerationRateWatts_ = i2;
                onChanged();
                return this;
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public RegenerationRateAtEnergyLevel build() {
                RegenerationRateAtEnergyLevel regenerationRateAtEnergyLevelBuildPartial = buildPartial();
                if (regenerationRateAtEnergyLevelBuildPartial.isInitialized()) {
                    return regenerationRateAtEnergyLevelBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) regenerationRateAtEnergyLevelBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public RegenerationRateAtEnergyLevel buildPartial() {
                RegenerationRateAtEnergyLevel regenerationRateAtEnergyLevel = new RegenerationRateAtEnergyLevel(this);
                regenerationRateAtEnergyLevel.energyLevelWh_ = this.energyLevelWh_;
                regenerationRateAtEnergyLevel.regenerationRateWatts_ = this.regenerationRateWatts_;
                onBuilt();
                return regenerationRateAtEnergyLevel;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public RegenerationRateAtEnergyLevel getDefaultInstanceForType() {
                return RegenerationRateAtEnergyLevel.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.energyLevelWh_ = 0;
                this.regenerationRateWatts_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof RegenerationRateAtEnergyLevel) {
                    return mergeFrom((RegenerationRateAtEnergyLevel) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(RegenerationRateAtEnergyLevel regenerationRateAtEnergyLevel) {
                if (regenerationRateAtEnergyLevel == RegenerationRateAtEnergyLevel.getDefaultInstance()) {
                    return this;
                }
                if (regenerationRateAtEnergyLevel.getEnergyLevelWh() != 0) {
                    setEnergyLevelWh(regenerationRateAtEnergyLevel.getEnergyLevelWh());
                }
                if (regenerationRateAtEnergyLevel.getRegenerationRateWatts() != 0) {
                    setRegenerationRateWatts(regenerationRateAtEnergyLevel.getRegenerationRateWatts());
                }
                mergeUnknownFields(((GeneratedMessageV3) regenerationRateAtEnergyLevel).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                RegenerationRateAtEnergyLevel regenerationRateAtEnergyLevel = null;
                try {
                    try {
                        RegenerationRateAtEnergyLevel regenerationRateAtEnergyLevel2 = (RegenerationRateAtEnergyLevel) RegenerationRateAtEnergyLevel.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (regenerationRateAtEnergyLevel2 != null) {
                            mergeFrom(regenerationRateAtEnergyLevel2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        RegenerationRateAtEnergyLevel regenerationRateAtEnergyLevel3 = (RegenerationRateAtEnergyLevel) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            regenerationRateAtEnergyLevel = regenerationRateAtEnergyLevel3;
                            if (regenerationRateAtEnergyLevel != null) {
                                mergeFrom(regenerationRateAtEnergyLevel);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (regenerationRateAtEnergyLevel != null) {
                        mergeFrom(regenerationRateAtEnergyLevel);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(RegenerationRateAtEnergyLevel regenerationRateAtEnergyLevel) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(regenerationRateAtEnergyLevel);
        }

        public static RegenerationRateAtEnergyLevel parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private RegenerationRateAtEnergyLevel(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RegenerationRateAtEnergyLevel parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (RegenerationRateAtEnergyLevel) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static RegenerationRateAtEnergyLevel parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public RegenerationRateAtEnergyLevel getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static RegenerationRateAtEnergyLevel parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private RegenerationRateAtEnergyLevel() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RegenerationRateAtEnergyLevel parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static RegenerationRateAtEnergyLevel parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        private RegenerationRateAtEnergyLevel(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.energyLevelWh_ = codedInputStream.readInt32();
                                } else if (tag != 16) {
                                    if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                    }
                                } else {
                                    this.regenerationRateWatts_ = codedInputStream.readUInt32();
                                }
                            }
                            z2 = true;
                        } catch (IOException e2) {
                            throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e3) {
                        throw e3.setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static RegenerationRateAtEnergyLevel parseFrom(InputStream inputStream) {
            return (RegenerationRateAtEnergyLevel) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static RegenerationRateAtEnergyLevel parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (RegenerationRateAtEnergyLevel) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static RegenerationRateAtEnergyLevel parseFrom(CodedInputStream codedInputStream) {
            return (RegenerationRateAtEnergyLevel) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static RegenerationRateAtEnergyLevel parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (RegenerationRateAtEnergyLevel) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface RegenerationRateAtEnergyLevelOrBuilder extends MessageOrBuilder {
        int getEnergyLevelWh();

        int getRegenerationRateWatts();
    }

    public static final class RegenerationRateAtTime extends GeneratedMessageV3 implements RegenerationRateAtTimeOrBuilder {
        private static final RegenerationRateAtTime DEFAULT_INSTANCE = new RegenerationRateAtTime();
        private static final Parser<RegenerationRateAtTime> PARSER = new AbstractParser<RegenerationRateAtTime>() { // from class: com.google.android.projection.proto.EnergyModel.RegenerationRateAtTime.1
            @Override // com.google.protobuf.Parser
            public RegenerationRateAtTime parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new RegenerationRateAtTime(codedInputStream, extensionRegistryLite);
            }
        };
        public static final int REGENERATION_RATE_WATTS_FIELD_NUMBER = 2;
        public static final int RELATIVE_TIME_SEC_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int regenerationRateWatts_;
        private int relativeTimeSec_;

        public static RegenerationRateAtTime getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return EnergyModel.internal_static_energy_model_RegenerationRateAtTime_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static RegenerationRateAtTime parseDelimitedFrom(InputStream inputStream) {
            return (RegenerationRateAtTime) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static RegenerationRateAtTime parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<RegenerationRateAtTime> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof RegenerationRateAtTime)) {
                return super.equals(obj);
            }
            RegenerationRateAtTime regenerationRateAtTime = (RegenerationRateAtTime) obj;
            return getRelativeTimeSec() == regenerationRateAtTime.getRelativeTimeSec() && getRegenerationRateWatts() == regenerationRateAtTime.getRegenerationRateWatts() && this.unknownFields.equals(regenerationRateAtTime.unknownFields);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<RegenerationRateAtTime> getParserForType() {
            return PARSER;
        }

        @Override // com.google.android.projection.proto.EnergyModel.RegenerationRateAtTimeOrBuilder
        public int getRegenerationRateWatts() {
            return this.regenerationRateWatts_;
        }

        @Override // com.google.android.projection.proto.EnergyModel.RegenerationRateAtTimeOrBuilder
        public int getRelativeTimeSec() {
            return this.relativeTimeSec_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int i3 = this.relativeTimeSec_;
            int iComputeInt32Size = i3 != 0 ? 0 + CodedOutputStream.computeInt32Size(1, i3) : 0;
            int i4 = this.regenerationRateWatts_;
            if (i4 != 0) {
                iComputeInt32Size += CodedOutputStream.computeUInt32Size(2, i4);
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeInt32Size;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = this.unknownFields.hashCode() + ((getRegenerationRateWatts() + ((((getRelativeTimeSec() + ((((getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY) * 37) + 1) * 53)) * 37) + 2) * 53)) * 29);
            this.memoizedHashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return EnergyModel.internal_static_energy_model_RegenerationRateAtTime_fieldAccessorTable.ensureFieldAccessorsInitialized(RegenerationRateAtTime.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new RegenerationRateAtTime();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            int i2 = this.relativeTimeSec_;
            if (i2 != 0) {
                codedOutputStream.writeInt32(1, i2);
            }
            int i3 = this.regenerationRateWatts_;
            if (i3 != 0) {
                codedOutputStream.writeUInt32(2, i3);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements RegenerationRateAtTimeOrBuilder {
            private int regenerationRateWatts_;
            private int relativeTimeSec_;

            public static final Descriptors.Descriptor getDescriptor() {
                return EnergyModel.internal_static_energy_model_RegenerationRateAtTime_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearRegenerationRateWatts() {
                this.regenerationRateWatts_ = 0;
                onChanged();
                return this;
            }

            public Builder clearRelativeTimeSec() {
                this.relativeTimeSec_ = 0;
                onChanged();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return EnergyModel.internal_static_energy_model_RegenerationRateAtTime_descriptor;
            }

            @Override // com.google.android.projection.proto.EnergyModel.RegenerationRateAtTimeOrBuilder
            public int getRegenerationRateWatts() {
                return this.regenerationRateWatts_;
            }

            @Override // com.google.android.projection.proto.EnergyModel.RegenerationRateAtTimeOrBuilder
            public int getRelativeTimeSec() {
                return this.relativeTimeSec_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return EnergyModel.internal_static_energy_model_RegenerationRateAtTime_fieldAccessorTable.ensureFieldAccessorsInitialized(RegenerationRateAtTime.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setRegenerationRateWatts(int i2) {
                this.regenerationRateWatts_ = i2;
                onChanged();
                return this;
            }

            public Builder setRelativeTimeSec(int i2) {
                this.relativeTimeSec_ = i2;
                onChanged();
                return this;
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public RegenerationRateAtTime build() {
                RegenerationRateAtTime regenerationRateAtTimeBuildPartial = buildPartial();
                if (regenerationRateAtTimeBuildPartial.isInitialized()) {
                    return regenerationRateAtTimeBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) regenerationRateAtTimeBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public RegenerationRateAtTime buildPartial() {
                RegenerationRateAtTime regenerationRateAtTime = new RegenerationRateAtTime(this);
                regenerationRateAtTime.relativeTimeSec_ = this.relativeTimeSec_;
                regenerationRateAtTime.regenerationRateWatts_ = this.regenerationRateWatts_;
                onBuilt();
                return regenerationRateAtTime;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public RegenerationRateAtTime getDefaultInstanceForType() {
                return RegenerationRateAtTime.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.relativeTimeSec_ = 0;
                this.regenerationRateWatts_ = 0;
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof RegenerationRateAtTime) {
                    return mergeFrom((RegenerationRateAtTime) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(RegenerationRateAtTime regenerationRateAtTime) {
                if (regenerationRateAtTime == RegenerationRateAtTime.getDefaultInstance()) {
                    return this;
                }
                if (regenerationRateAtTime.getRelativeTimeSec() != 0) {
                    setRelativeTimeSec(regenerationRateAtTime.getRelativeTimeSec());
                }
                if (regenerationRateAtTime.getRegenerationRateWatts() != 0) {
                    setRegenerationRateWatts(regenerationRateAtTime.getRegenerationRateWatts());
                }
                mergeUnknownFields(((GeneratedMessageV3) regenerationRateAtTime).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                RegenerationRateAtTime regenerationRateAtTime = null;
                try {
                    try {
                        RegenerationRateAtTime regenerationRateAtTime2 = (RegenerationRateAtTime) RegenerationRateAtTime.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (regenerationRateAtTime2 != null) {
                            mergeFrom(regenerationRateAtTime2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        RegenerationRateAtTime regenerationRateAtTime3 = (RegenerationRateAtTime) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            regenerationRateAtTime = regenerationRateAtTime3;
                            if (regenerationRateAtTime != null) {
                                mergeFrom(regenerationRateAtTime);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (regenerationRateAtTime != null) {
                        mergeFrom(regenerationRateAtTime);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(RegenerationRateAtTime regenerationRateAtTime) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(regenerationRateAtTime);
        }

        public static RegenerationRateAtTime parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private RegenerationRateAtTime(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RegenerationRateAtTime parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (RegenerationRateAtTime) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static RegenerationRateAtTime parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public RegenerationRateAtTime getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static RegenerationRateAtTime parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private RegenerationRateAtTime() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RegenerationRateAtTime parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static RegenerationRateAtTime parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        private RegenerationRateAtTime(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 8) {
                                    this.relativeTimeSec_ = codedInputStream.readInt32();
                                } else if (tag != 16) {
                                    if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                    }
                                } else {
                                    this.regenerationRateWatts_ = codedInputStream.readUInt32();
                                }
                            }
                            z2 = true;
                        } catch (IOException e2) {
                            throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e3) {
                        throw e3.setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static RegenerationRateAtTime parseFrom(InputStream inputStream) {
            return (RegenerationRateAtTime) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static RegenerationRateAtTime parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (RegenerationRateAtTime) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static RegenerationRateAtTime parseFrom(CodedInputStream codedInputStream) {
            return (RegenerationRateAtTime) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static RegenerationRateAtTime parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (RegenerationRateAtTime) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface RegenerationRateAtTimeOrBuilder extends MessageOrBuilder {
        int getRegenerationRateWatts();

        int getRelativeTimeSec();
    }

    public static final class RoadLoadForce extends GeneratedMessageV3 implements RoadLoadForceOrBuilder {
        public static final int CONSTANT_FIELD_NUMBER = 1;
        public static final int LINEAR_FIELD_NUMBER = 2;
        public static final int QUADRATIC_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private FloatWithUncertainty constant_;
        private FloatWithUncertainty linear_;
        private byte memoizedIsInitialized;
        private FloatWithUncertainty quadratic_;
        private static final RoadLoadForce DEFAULT_INSTANCE = new RoadLoadForce();
        private static final Parser<RoadLoadForce> PARSER = new AbstractParser<RoadLoadForce>() { // from class: com.google.android.projection.proto.EnergyModel.RoadLoadForce.1
            @Override // com.google.protobuf.Parser
            public RoadLoadForce parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new RoadLoadForce(codedInputStream, extensionRegistryLite);
            }
        };

        public static RoadLoadForce getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return EnergyModel.internal_static_energy_model_RoadLoadForce_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static RoadLoadForce parseDelimitedFrom(InputStream inputStream) {
            return (RoadLoadForce) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static RoadLoadForce parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<RoadLoadForce> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof RoadLoadForce)) {
                return super.equals(obj);
            }
            RoadLoadForce roadLoadForce = (RoadLoadForce) obj;
            if (hasConstant() != roadLoadForce.hasConstant()) {
                return false;
            }
            if ((hasConstant() && !getConstant().equals(roadLoadForce.getConstant())) || hasLinear() != roadLoadForce.hasLinear()) {
                return false;
            }
            if ((!hasLinear() || getLinear().equals(roadLoadForce.getLinear())) && hasQuadratic() == roadLoadForce.hasQuadratic()) {
                return (!hasQuadratic() || getQuadratic().equals(roadLoadForce.getQuadratic())) && this.unknownFields.equals(roadLoadForce.unknownFields);
            }
            return false;
        }

        @Override // com.google.android.projection.proto.EnergyModel.RoadLoadForceOrBuilder
        public FloatWithUncertainty getConstant() {
            FloatWithUncertainty floatWithUncertainty = this.constant_;
            return floatWithUncertainty == null ? FloatWithUncertainty.getDefaultInstance() : floatWithUncertainty;
        }

        @Override // com.google.android.projection.proto.EnergyModel.RoadLoadForceOrBuilder
        public FloatWithUncertaintyOrBuilder getConstantOrBuilder() {
            return getConstant();
        }

        @Override // com.google.android.projection.proto.EnergyModel.RoadLoadForceOrBuilder
        public FloatWithUncertainty getLinear() {
            FloatWithUncertainty floatWithUncertainty = this.linear_;
            return floatWithUncertainty == null ? FloatWithUncertainty.getDefaultInstance() : floatWithUncertainty;
        }

        @Override // com.google.android.projection.proto.EnergyModel.RoadLoadForceOrBuilder
        public FloatWithUncertaintyOrBuilder getLinearOrBuilder() {
            return getLinear();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<RoadLoadForce> getParserForType() {
            return PARSER;
        }

        @Override // com.google.android.projection.proto.EnergyModel.RoadLoadForceOrBuilder
        public FloatWithUncertainty getQuadratic() {
            FloatWithUncertainty floatWithUncertainty = this.quadratic_;
            return floatWithUncertainty == null ? FloatWithUncertainty.getDefaultInstance() : floatWithUncertainty;
        }

        @Override // com.google.android.projection.proto.EnergyModel.RoadLoadForceOrBuilder
        public FloatWithUncertaintyOrBuilder getQuadraticOrBuilder() {
            return getQuadratic();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int iComputeMessageSize = this.constant_ != null ? 0 + CodedOutputStream.computeMessageSize(1, getConstant()) : 0;
            if (this.linear_ != null) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(2, getLinear());
            }
            if (this.quadratic_ != null) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(3, getQuadratic());
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeMessageSize;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.android.projection.proto.EnergyModel.RoadLoadForceOrBuilder
        public boolean hasConstant() {
            return this.constant_ != null;
        }

        @Override // com.google.android.projection.proto.EnergyModel.RoadLoadForceOrBuilder
        public boolean hasLinear() {
            return this.linear_ != null;
        }

        @Override // com.google.android.projection.proto.EnergyModel.RoadLoadForceOrBuilder
        public boolean hasQuadratic() {
            return this.quadratic_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY;
            if (hasConstant()) {
                iHashCode = m.D(iHashCode, 37, 1, 53) + getConstant().hashCode();
            }
            if (hasLinear()) {
                iHashCode = m.D(iHashCode, 37, 2, 53) + getLinear().hashCode();
            }
            if (hasQuadratic()) {
                iHashCode = m.D(iHashCode, 37, 3, 53) + getQuadratic().hashCode();
            }
            int iHashCode2 = this.unknownFields.hashCode() + (iHashCode * 29);
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return EnergyModel.internal_static_energy_model_RoadLoadForce_fieldAccessorTable.ensureFieldAccessorsInitialized(RoadLoadForce.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new RoadLoadForce();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            if (this.constant_ != null) {
                codedOutputStream.writeMessage(1, getConstant());
            }
            if (this.linear_ != null) {
                codedOutputStream.writeMessage(2, getLinear());
            }
            if (this.quadratic_ != null) {
                codedOutputStream.writeMessage(3, getQuadratic());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements RoadLoadForceOrBuilder {
            private SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> constantBuilder_;
            private FloatWithUncertainty constant_;
            private SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> linearBuilder_;
            private FloatWithUncertainty linear_;
            private SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> quadraticBuilder_;
            private FloatWithUncertainty quadratic_;

            private SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> getConstantFieldBuilder() {
                if (this.constantBuilder_ == null) {
                    this.constantBuilder_ = new SingleFieldBuilderV3<>(getConstant(), getParentForChildren(), isClean());
                    this.constant_ = null;
                }
                return this.constantBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return EnergyModel.internal_static_energy_model_RoadLoadForce_descriptor;
            }

            private SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> getLinearFieldBuilder() {
                if (this.linearBuilder_ == null) {
                    this.linearBuilder_ = new SingleFieldBuilderV3<>(getLinear(), getParentForChildren(), isClean());
                    this.linear_ = null;
                }
                return this.linearBuilder_;
            }

            private SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> getQuadraticFieldBuilder() {
                if (this.quadraticBuilder_ == null) {
                    this.quadraticBuilder_ = new SingleFieldBuilderV3<>(getQuadratic(), getParentForChildren(), isClean());
                    this.quadratic_ = null;
                }
                return this.quadraticBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearConstant() {
                if (this.constantBuilder_ == null) {
                    this.constant_ = null;
                    onChanged();
                } else {
                    this.constant_ = null;
                    this.constantBuilder_ = null;
                }
                return this;
            }

            public Builder clearLinear() {
                if (this.linearBuilder_ == null) {
                    this.linear_ = null;
                    onChanged();
                } else {
                    this.linear_ = null;
                    this.linearBuilder_ = null;
                }
                return this;
            }

            public Builder clearQuadratic() {
                if (this.quadraticBuilder_ == null) {
                    this.quadratic_ = null;
                    onChanged();
                } else {
                    this.quadratic_ = null;
                    this.quadraticBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.android.projection.proto.EnergyModel.RoadLoadForceOrBuilder
            public FloatWithUncertainty getConstant() {
                SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.constantBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (FloatWithUncertainty) singleFieldBuilderV3.getMessage();
                }
                FloatWithUncertainty floatWithUncertainty = this.constant_;
                return floatWithUncertainty == null ? FloatWithUncertainty.getDefaultInstance() : floatWithUncertainty;
            }

            public FloatWithUncertainty.Builder getConstantBuilder() {
                onChanged();
                return (FloatWithUncertainty.Builder) getConstantFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.EnergyModel.RoadLoadForceOrBuilder
            public FloatWithUncertaintyOrBuilder getConstantOrBuilder() {
                SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.constantBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (FloatWithUncertaintyOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                FloatWithUncertainty floatWithUncertainty = this.constant_;
                return floatWithUncertainty == null ? FloatWithUncertainty.getDefaultInstance() : floatWithUncertainty;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return EnergyModel.internal_static_energy_model_RoadLoadForce_descriptor;
            }

            @Override // com.google.android.projection.proto.EnergyModel.RoadLoadForceOrBuilder
            public FloatWithUncertainty getLinear() {
                SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.linearBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (FloatWithUncertainty) singleFieldBuilderV3.getMessage();
                }
                FloatWithUncertainty floatWithUncertainty = this.linear_;
                return floatWithUncertainty == null ? FloatWithUncertainty.getDefaultInstance() : floatWithUncertainty;
            }

            public FloatWithUncertainty.Builder getLinearBuilder() {
                onChanged();
                return (FloatWithUncertainty.Builder) getLinearFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.EnergyModel.RoadLoadForceOrBuilder
            public FloatWithUncertaintyOrBuilder getLinearOrBuilder() {
                SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.linearBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (FloatWithUncertaintyOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                FloatWithUncertainty floatWithUncertainty = this.linear_;
                return floatWithUncertainty == null ? FloatWithUncertainty.getDefaultInstance() : floatWithUncertainty;
            }

            @Override // com.google.android.projection.proto.EnergyModel.RoadLoadForceOrBuilder
            public FloatWithUncertainty getQuadratic() {
                SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.quadraticBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (FloatWithUncertainty) singleFieldBuilderV3.getMessage();
                }
                FloatWithUncertainty floatWithUncertainty = this.quadratic_;
                return floatWithUncertainty == null ? FloatWithUncertainty.getDefaultInstance() : floatWithUncertainty;
            }

            public FloatWithUncertainty.Builder getQuadraticBuilder() {
                onChanged();
                return (FloatWithUncertainty.Builder) getQuadraticFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.EnergyModel.RoadLoadForceOrBuilder
            public FloatWithUncertaintyOrBuilder getQuadraticOrBuilder() {
                SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.quadraticBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (FloatWithUncertaintyOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                FloatWithUncertainty floatWithUncertainty = this.quadratic_;
                return floatWithUncertainty == null ? FloatWithUncertainty.getDefaultInstance() : floatWithUncertainty;
            }

            @Override // com.google.android.projection.proto.EnergyModel.RoadLoadForceOrBuilder
            public boolean hasConstant() {
                return (this.constantBuilder_ == null && this.constant_ == null) ? false : true;
            }

            @Override // com.google.android.projection.proto.EnergyModel.RoadLoadForceOrBuilder
            public boolean hasLinear() {
                return (this.linearBuilder_ == null && this.linear_ == null) ? false : true;
            }

            @Override // com.google.android.projection.proto.EnergyModel.RoadLoadForceOrBuilder
            public boolean hasQuadratic() {
                return (this.quadraticBuilder_ == null && this.quadratic_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return EnergyModel.internal_static_energy_model_RoadLoadForce_fieldAccessorTable.ensureFieldAccessorsInitialized(RoadLoadForce.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeConstant(FloatWithUncertainty floatWithUncertainty) {
                SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.constantBuilder_;
                if (singleFieldBuilderV3 == null) {
                    FloatWithUncertainty floatWithUncertainty2 = this.constant_;
                    if (floatWithUncertainty2 != null) {
                        this.constant_ = FloatWithUncertainty.newBuilder(floatWithUncertainty2).mergeFrom(floatWithUncertainty).buildPartial();
                    } else {
                        this.constant_ = floatWithUncertainty;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(floatWithUncertainty);
                }
                return this;
            }

            public Builder mergeLinear(FloatWithUncertainty floatWithUncertainty) {
                SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.linearBuilder_;
                if (singleFieldBuilderV3 == null) {
                    FloatWithUncertainty floatWithUncertainty2 = this.linear_;
                    if (floatWithUncertainty2 != null) {
                        this.linear_ = FloatWithUncertainty.newBuilder(floatWithUncertainty2).mergeFrom(floatWithUncertainty).buildPartial();
                    } else {
                        this.linear_ = floatWithUncertainty;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(floatWithUncertainty);
                }
                return this;
            }

            public Builder mergeQuadratic(FloatWithUncertainty floatWithUncertainty) {
                SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.quadraticBuilder_;
                if (singleFieldBuilderV3 == null) {
                    FloatWithUncertainty floatWithUncertainty2 = this.quadratic_;
                    if (floatWithUncertainty2 != null) {
                        this.quadratic_ = FloatWithUncertainty.newBuilder(floatWithUncertainty2).mergeFrom(floatWithUncertainty).buildPartial();
                    } else {
                        this.quadratic_ = floatWithUncertainty;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(floatWithUncertainty);
                }
                return this;
            }

            public Builder setConstant(FloatWithUncertainty floatWithUncertainty) {
                SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.constantBuilder_;
                if (singleFieldBuilderV3 == null) {
                    floatWithUncertainty.getClass();
                    this.constant_ = floatWithUncertainty;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(floatWithUncertainty);
                }
                return this;
            }

            public Builder setLinear(FloatWithUncertainty floatWithUncertainty) {
                SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.linearBuilder_;
                if (singleFieldBuilderV3 == null) {
                    floatWithUncertainty.getClass();
                    this.linear_ = floatWithUncertainty;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(floatWithUncertainty);
                }
                return this;
            }

            public Builder setQuadratic(FloatWithUncertainty floatWithUncertainty) {
                SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.quadraticBuilder_;
                if (singleFieldBuilderV3 == null) {
                    floatWithUncertainty.getClass();
                    this.quadratic_ = floatWithUncertainty;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(floatWithUncertainty);
                }
                return this;
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public RoadLoadForce build() {
                RoadLoadForce roadLoadForceBuildPartial = buildPartial();
                if (roadLoadForceBuildPartial.isInitialized()) {
                    return roadLoadForceBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) roadLoadForceBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public RoadLoadForce buildPartial() {
                RoadLoadForce roadLoadForce = new RoadLoadForce(this);
                SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.constantBuilder_;
                if (singleFieldBuilderV3 == null) {
                    roadLoadForce.constant_ = this.constant_;
                } else {
                    roadLoadForce.constant_ = (FloatWithUncertainty) singleFieldBuilderV3.build();
                }
                SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> singleFieldBuilderV4 = this.linearBuilder_;
                if (singleFieldBuilderV4 == null) {
                    roadLoadForce.linear_ = this.linear_;
                } else {
                    roadLoadForce.linear_ = (FloatWithUncertainty) singleFieldBuilderV4.build();
                }
                SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> singleFieldBuilderV5 = this.quadraticBuilder_;
                if (singleFieldBuilderV5 == null) {
                    roadLoadForce.quadratic_ = this.quadratic_;
                } else {
                    roadLoadForce.quadratic_ = (FloatWithUncertainty) singleFieldBuilderV5.build();
                }
                onBuilt();
                return roadLoadForce;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public RoadLoadForce getDefaultInstanceForType() {
                return RoadLoadForce.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                if (this.constantBuilder_ == null) {
                    this.constant_ = null;
                } else {
                    this.constant_ = null;
                    this.constantBuilder_ = null;
                }
                if (this.linearBuilder_ == null) {
                    this.linear_ = null;
                } else {
                    this.linear_ = null;
                    this.linearBuilder_ = null;
                }
                if (this.quadraticBuilder_ == null) {
                    this.quadratic_ = null;
                } else {
                    this.quadratic_ = null;
                    this.quadraticBuilder_ = null;
                }
                return this;
            }

            public Builder setConstant(FloatWithUncertainty.Builder builder) {
                SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.constantBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.constant_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder setLinear(FloatWithUncertainty.Builder builder) {
                SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.linearBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.linear_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder setQuadratic(FloatWithUncertainty.Builder builder) {
                SingleFieldBuilderV3<FloatWithUncertainty, FloatWithUncertainty.Builder, FloatWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.quadraticBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.quadratic_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof RoadLoadForce) {
                    return mergeFrom((RoadLoadForce) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(RoadLoadForce roadLoadForce) {
                if (roadLoadForce == RoadLoadForce.getDefaultInstance()) {
                    return this;
                }
                if (roadLoadForce.hasConstant()) {
                    mergeConstant(roadLoadForce.getConstant());
                }
                if (roadLoadForce.hasLinear()) {
                    mergeLinear(roadLoadForce.getLinear());
                }
                if (roadLoadForce.hasQuadratic()) {
                    mergeQuadratic(roadLoadForce.getQuadratic());
                }
                mergeUnknownFields(((GeneratedMessageV3) roadLoadForce).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                RoadLoadForce roadLoadForce = null;
                try {
                    try {
                        RoadLoadForce roadLoadForce2 = (RoadLoadForce) RoadLoadForce.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (roadLoadForce2 != null) {
                            mergeFrom(roadLoadForce2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        RoadLoadForce roadLoadForce3 = (RoadLoadForce) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            roadLoadForce = roadLoadForce3;
                            if (roadLoadForce != null) {
                                mergeFrom(roadLoadForce);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (roadLoadForce != null) {
                        mergeFrom(roadLoadForce);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(RoadLoadForce roadLoadForce) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(roadLoadForce);
        }

        public static RoadLoadForce parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private RoadLoadForce(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RoadLoadForce parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (RoadLoadForce) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static RoadLoadForce parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public RoadLoadForce getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static RoadLoadForce parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private RoadLoadForce() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static RoadLoadForce parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static RoadLoadForce parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        private RoadLoadForce(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            FloatWithUncertainty.Builder builder;
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 10) {
                                FloatWithUncertainty floatWithUncertainty = this.constant_;
                                builder = floatWithUncertainty != null ? floatWithUncertainty.toBuilder() : null;
                                FloatWithUncertainty floatWithUncertainty2 = (FloatWithUncertainty) codedInputStream.readMessage(FloatWithUncertainty.parser(), extensionRegistryLite);
                                this.constant_ = floatWithUncertainty2;
                                if (builder != null) {
                                    builder.mergeFrom(floatWithUncertainty2);
                                    this.constant_ = builder.buildPartial();
                                }
                            } else if (tag == 18) {
                                FloatWithUncertainty floatWithUncertainty3 = this.linear_;
                                builder = floatWithUncertainty3 != null ? floatWithUncertainty3.toBuilder() : null;
                                FloatWithUncertainty floatWithUncertainty4 = (FloatWithUncertainty) codedInputStream.readMessage(FloatWithUncertainty.parser(), extensionRegistryLite);
                                this.linear_ = floatWithUncertainty4;
                                if (builder != null) {
                                    builder.mergeFrom(floatWithUncertainty4);
                                    this.linear_ = builder.buildPartial();
                                }
                            } else if (tag != 26) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                FloatWithUncertainty floatWithUncertainty5 = this.quadratic_;
                                builder = floatWithUncertainty5 != null ? floatWithUncertainty5.toBuilder() : null;
                                FloatWithUncertainty floatWithUncertainty6 = (FloatWithUncertainty) codedInputStream.readMessage(FloatWithUncertainty.parser(), extensionRegistryLite);
                                this.quadratic_ = floatWithUncertainty6;
                                if (builder != null) {
                                    builder.mergeFrom(floatWithUncertainty6);
                                    this.quadratic_ = builder.buildPartial();
                                }
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static RoadLoadForce parseFrom(InputStream inputStream) {
            return (RoadLoadForce) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static RoadLoadForce parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (RoadLoadForce) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static RoadLoadForce parseFrom(CodedInputStream codedInputStream) {
            return (RoadLoadForce) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static RoadLoadForce parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (RoadLoadForce) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface RoadLoadForceOrBuilder extends MessageOrBuilder {
        FloatWithUncertainty getConstant();

        FloatWithUncertaintyOrBuilder getConstantOrBuilder();

        FloatWithUncertainty getLinear();

        FloatWithUncertaintyOrBuilder getLinearOrBuilder();

        FloatWithUncertainty getQuadratic();

        FloatWithUncertaintyOrBuilder getQuadraticOrBuilder();

        boolean hasConstant();

        boolean hasLinear();

        boolean hasQuadratic();
    }

    public static final class VehicleEnergyModelData extends GeneratedMessageV3 implements VehicleEnergyModelDataOrBuilder {
        public static final int AUXILIARY_DRAIN_AT_TEMP_FIELD_NUMBER = 7;
        public static final int AUXILIARY_DRAIN_AT_TIME_FIELD_NUMBER = 6;
        public static final int BATTERY_LOSSES_FIELD_NUMBER = 5;
        public static final int CHARGING_CURVES_FIELD_NUMBER = 8;
        public static final int CURRENT_CHARGING_TIME_FIELD_NUMBER = 9;
        public static final int DRIVETRAIN_LOSSES_FIELD_NUMBER = 3;
        public static final int MAX_REGEN_POWER_FIELD_NUMBER = 4;
        public static final int ROAD_LOAD_FIELD_NUMBER = 2;
        public static final int VEHICLE_INFO_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<DrainAtTemperature> auxiliaryDrainAtTemp_;
        private List<DrainAtTime> auxiliaryDrainAtTime_;
        private BatteryLosses batteryLosses_;
        private ChargingCurves chargingCurves_;
        private ChargingTime currentChargingTime_;
        private DrivetrainLosses drivetrainLosses_;
        private MaxRegenPower maxRegenPower_;
        private byte memoizedIsInitialized;
        private RoadLoadForce roadLoad_;
        private VehicleInfo vehicleInfo_;
        private static final VehicleEnergyModelData DEFAULT_INSTANCE = new VehicleEnergyModelData();
        private static final Parser<VehicleEnergyModelData> PARSER = new AbstractParser<VehicleEnergyModelData>() { // from class: com.google.android.projection.proto.EnergyModel.VehicleEnergyModelData.1
            @Override // com.google.protobuf.Parser
            public VehicleEnergyModelData parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new VehicleEnergyModelData(codedInputStream, extensionRegistryLite);
            }
        };

        public static VehicleEnergyModelData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return EnergyModel.internal_static_energy_model_VehicleEnergyModelData_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static VehicleEnergyModelData parseDelimitedFrom(InputStream inputStream) {
            return (VehicleEnergyModelData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static VehicleEnergyModelData parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<VehicleEnergyModelData> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof VehicleEnergyModelData)) {
                return super.equals(obj);
            }
            VehicleEnergyModelData vehicleEnergyModelData = (VehicleEnergyModelData) obj;
            if (hasVehicleInfo() != vehicleEnergyModelData.hasVehicleInfo()) {
                return false;
            }
            if ((hasVehicleInfo() && !getVehicleInfo().equals(vehicleEnergyModelData.getVehicleInfo())) || hasRoadLoad() != vehicleEnergyModelData.hasRoadLoad()) {
                return false;
            }
            if ((hasRoadLoad() && !getRoadLoad().equals(vehicleEnergyModelData.getRoadLoad())) || hasDrivetrainLosses() != vehicleEnergyModelData.hasDrivetrainLosses()) {
                return false;
            }
            if ((hasDrivetrainLosses() && !getDrivetrainLosses().equals(vehicleEnergyModelData.getDrivetrainLosses())) || hasMaxRegenPower() != vehicleEnergyModelData.hasMaxRegenPower()) {
                return false;
            }
            if ((hasMaxRegenPower() && !getMaxRegenPower().equals(vehicleEnergyModelData.getMaxRegenPower())) || hasBatteryLosses() != vehicleEnergyModelData.hasBatteryLosses()) {
                return false;
            }
            if ((hasBatteryLosses() && !getBatteryLosses().equals(vehicleEnergyModelData.getBatteryLosses())) || !getAuxiliaryDrainAtTimeList().equals(vehicleEnergyModelData.getAuxiliaryDrainAtTimeList()) || !getAuxiliaryDrainAtTempList().equals(vehicleEnergyModelData.getAuxiliaryDrainAtTempList()) || hasChargingCurves() != vehicleEnergyModelData.hasChargingCurves()) {
                return false;
            }
            if ((!hasChargingCurves() || getChargingCurves().equals(vehicleEnergyModelData.getChargingCurves())) && hasCurrentChargingTime() == vehicleEnergyModelData.hasCurrentChargingTime()) {
                return (!hasCurrentChargingTime() || getCurrentChargingTime().equals(vehicleEnergyModelData.getCurrentChargingTime())) && this.unknownFields.equals(vehicleEnergyModelData.unknownFields);
            }
            return false;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public DrainAtTemperature getAuxiliaryDrainAtTemp(int i2) {
            return this.auxiliaryDrainAtTemp_.get(i2);
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public int getAuxiliaryDrainAtTempCount() {
            return this.auxiliaryDrainAtTemp_.size();
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public List<DrainAtTemperature> getAuxiliaryDrainAtTempList() {
            return this.auxiliaryDrainAtTemp_;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public DrainAtTemperatureOrBuilder getAuxiliaryDrainAtTempOrBuilder(int i2) {
            return this.auxiliaryDrainAtTemp_.get(i2);
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public List<? extends DrainAtTemperatureOrBuilder> getAuxiliaryDrainAtTempOrBuilderList() {
            return this.auxiliaryDrainAtTemp_;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public DrainAtTime getAuxiliaryDrainAtTime(int i2) {
            return this.auxiliaryDrainAtTime_.get(i2);
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public int getAuxiliaryDrainAtTimeCount() {
            return this.auxiliaryDrainAtTime_.size();
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public List<DrainAtTime> getAuxiliaryDrainAtTimeList() {
            return this.auxiliaryDrainAtTime_;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public DrainAtTimeOrBuilder getAuxiliaryDrainAtTimeOrBuilder(int i2) {
            return this.auxiliaryDrainAtTime_.get(i2);
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public List<? extends DrainAtTimeOrBuilder> getAuxiliaryDrainAtTimeOrBuilderList() {
            return this.auxiliaryDrainAtTime_;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public BatteryLosses getBatteryLosses() {
            BatteryLosses batteryLosses = this.batteryLosses_;
            return batteryLosses == null ? BatteryLosses.getDefaultInstance() : batteryLosses;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public BatteryLossesOrBuilder getBatteryLossesOrBuilder() {
            return getBatteryLosses();
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public ChargingCurves getChargingCurves() {
            ChargingCurves chargingCurves = this.chargingCurves_;
            return chargingCurves == null ? ChargingCurves.getDefaultInstance() : chargingCurves;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public ChargingCurvesOrBuilder getChargingCurvesOrBuilder() {
            return getChargingCurves();
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public ChargingTime getCurrentChargingTime() {
            ChargingTime chargingTime = this.currentChargingTime_;
            return chargingTime == null ? ChargingTime.getDefaultInstance() : chargingTime;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public ChargingTimeOrBuilder getCurrentChargingTimeOrBuilder() {
            return getCurrentChargingTime();
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public DrivetrainLosses getDrivetrainLosses() {
            DrivetrainLosses drivetrainLosses = this.drivetrainLosses_;
            return drivetrainLosses == null ? DrivetrainLosses.getDefaultInstance() : drivetrainLosses;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public DrivetrainLossesOrBuilder getDrivetrainLossesOrBuilder() {
            return getDrivetrainLosses();
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public MaxRegenPower getMaxRegenPower() {
            MaxRegenPower maxRegenPower = this.maxRegenPower_;
            return maxRegenPower == null ? MaxRegenPower.getDefaultInstance() : maxRegenPower;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public MaxRegenPowerOrBuilder getMaxRegenPowerOrBuilder() {
            return getMaxRegenPower();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<VehicleEnergyModelData> getParserForType() {
            return PARSER;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public RoadLoadForce getRoadLoad() {
            RoadLoadForce roadLoadForce = this.roadLoad_;
            return roadLoadForce == null ? RoadLoadForce.getDefaultInstance() : roadLoadForce;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public RoadLoadForceOrBuilder getRoadLoadOrBuilder() {
            return getRoadLoad();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int iComputeMessageSize = this.vehicleInfo_ != null ? CodedOutputStream.computeMessageSize(1, getVehicleInfo()) + 0 : 0;
            if (this.roadLoad_ != null) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(2, getRoadLoad());
            }
            if (this.drivetrainLosses_ != null) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(3, getDrivetrainLosses());
            }
            if (this.maxRegenPower_ != null) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(4, getMaxRegenPower());
            }
            if (this.batteryLosses_ != null) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(5, getBatteryLosses());
            }
            for (int i3 = 0; i3 < this.auxiliaryDrainAtTime_.size(); i3++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(6, this.auxiliaryDrainAtTime_.get(i3));
            }
            for (int i4 = 0; i4 < this.auxiliaryDrainAtTemp_.size(); i4++) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(7, this.auxiliaryDrainAtTemp_.get(i4));
            }
            if (this.chargingCurves_ != null) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(8, getChargingCurves());
            }
            if (this.currentChargingTime_ != null) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(9, getCurrentChargingTime());
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeMessageSize;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public VehicleInfo getVehicleInfo() {
            VehicleInfo vehicleInfo = this.vehicleInfo_;
            return vehicleInfo == null ? VehicleInfo.getDefaultInstance() : vehicleInfo;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public VehicleInfoOrBuilder getVehicleInfoOrBuilder() {
            return getVehicleInfo();
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public boolean hasBatteryLosses() {
            return this.batteryLosses_ != null;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public boolean hasChargingCurves() {
            return this.chargingCurves_ != null;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public boolean hasCurrentChargingTime() {
            return this.currentChargingTime_ != null;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public boolean hasDrivetrainLosses() {
            return this.drivetrainLosses_ != null;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public boolean hasMaxRegenPower() {
            return this.maxRegenPower_ != null;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public boolean hasRoadLoad() {
            return this.roadLoad_ != null;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
        public boolean hasVehicleInfo() {
            return this.vehicleInfo_ != null;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY;
            if (hasVehicleInfo()) {
                iHashCode = m.D(iHashCode, 37, 1, 53) + getVehicleInfo().hashCode();
            }
            if (hasRoadLoad()) {
                iHashCode = m.D(iHashCode, 37, 2, 53) + getRoadLoad().hashCode();
            }
            if (hasDrivetrainLosses()) {
                iHashCode = m.D(iHashCode, 37, 3, 53) + getDrivetrainLosses().hashCode();
            }
            if (hasMaxRegenPower()) {
                iHashCode = m.D(iHashCode, 37, 4, 53) + getMaxRegenPower().hashCode();
            }
            if (hasBatteryLosses()) {
                iHashCode = m.D(iHashCode, 37, 5, 53) + getBatteryLosses().hashCode();
            }
            if (getAuxiliaryDrainAtTimeCount() > 0) {
                iHashCode = m.D(iHashCode, 37, 6, 53) + getAuxiliaryDrainAtTimeList().hashCode();
            }
            if (getAuxiliaryDrainAtTempCount() > 0) {
                iHashCode = m.D(iHashCode, 37, 7, 53) + getAuxiliaryDrainAtTempList().hashCode();
            }
            if (hasChargingCurves()) {
                iHashCode = m.D(iHashCode, 37, 8, 53) + getChargingCurves().hashCode();
            }
            if (hasCurrentChargingTime()) {
                iHashCode = m.D(iHashCode, 37, 9, 53) + getCurrentChargingTime().hashCode();
            }
            int iHashCode2 = this.unknownFields.hashCode() + (iHashCode * 29);
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return EnergyModel.internal_static_energy_model_VehicleEnergyModelData_fieldAccessorTable.ensureFieldAccessorsInitialized(VehicleEnergyModelData.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new VehicleEnergyModelData();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            if (this.vehicleInfo_ != null) {
                codedOutputStream.writeMessage(1, getVehicleInfo());
            }
            if (this.roadLoad_ != null) {
                codedOutputStream.writeMessage(2, getRoadLoad());
            }
            if (this.drivetrainLosses_ != null) {
                codedOutputStream.writeMessage(3, getDrivetrainLosses());
            }
            if (this.maxRegenPower_ != null) {
                codedOutputStream.writeMessage(4, getMaxRegenPower());
            }
            if (this.batteryLosses_ != null) {
                codedOutputStream.writeMessage(5, getBatteryLosses());
            }
            for (int i2 = 0; i2 < this.auxiliaryDrainAtTime_.size(); i2++) {
                codedOutputStream.writeMessage(6, this.auxiliaryDrainAtTime_.get(i2));
            }
            for (int i3 = 0; i3 < this.auxiliaryDrainAtTemp_.size(); i3++) {
                codedOutputStream.writeMessage(7, this.auxiliaryDrainAtTemp_.get(i3));
            }
            if (this.chargingCurves_ != null) {
                codedOutputStream.writeMessage(8, getChargingCurves());
            }
            if (this.currentChargingTime_ != null) {
                codedOutputStream.writeMessage(9, getCurrentChargingTime());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements VehicleEnergyModelDataOrBuilder {
            private RepeatedFieldBuilderV3<DrainAtTemperature, DrainAtTemperature.Builder, DrainAtTemperatureOrBuilder> auxiliaryDrainAtTempBuilder_;
            private List<DrainAtTemperature> auxiliaryDrainAtTemp_;
            private RepeatedFieldBuilderV3<DrainAtTime, DrainAtTime.Builder, DrainAtTimeOrBuilder> auxiliaryDrainAtTimeBuilder_;
            private List<DrainAtTime> auxiliaryDrainAtTime_;
            private SingleFieldBuilderV3<BatteryLosses, BatteryLosses.Builder, BatteryLossesOrBuilder> batteryLossesBuilder_;
            private BatteryLosses batteryLosses_;
            private int bitField0_;
            private SingleFieldBuilderV3<ChargingCurves, ChargingCurves.Builder, ChargingCurvesOrBuilder> chargingCurvesBuilder_;
            private ChargingCurves chargingCurves_;
            private SingleFieldBuilderV3<ChargingTime, ChargingTime.Builder, ChargingTimeOrBuilder> currentChargingTimeBuilder_;
            private ChargingTime currentChargingTime_;
            private SingleFieldBuilderV3<DrivetrainLosses, DrivetrainLosses.Builder, DrivetrainLossesOrBuilder> drivetrainLossesBuilder_;
            private DrivetrainLosses drivetrainLosses_;
            private SingleFieldBuilderV3<MaxRegenPower, MaxRegenPower.Builder, MaxRegenPowerOrBuilder> maxRegenPowerBuilder_;
            private MaxRegenPower maxRegenPower_;
            private SingleFieldBuilderV3<RoadLoadForce, RoadLoadForce.Builder, RoadLoadForceOrBuilder> roadLoadBuilder_;
            private RoadLoadForce roadLoad_;
            private SingleFieldBuilderV3<VehicleInfo, VehicleInfo.Builder, VehicleInfoOrBuilder> vehicleInfoBuilder_;
            private VehicleInfo vehicleInfo_;

            private void ensureAuxiliaryDrainAtTempIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.auxiliaryDrainAtTemp_ = new ArrayList(this.auxiliaryDrainAtTemp_);
                    this.bitField0_ |= 2;
                }
            }

            private void ensureAuxiliaryDrainAtTimeIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.auxiliaryDrainAtTime_ = new ArrayList(this.auxiliaryDrainAtTime_);
                    this.bitField0_ |= 1;
                }
            }

            private RepeatedFieldBuilderV3<DrainAtTemperature, DrainAtTemperature.Builder, DrainAtTemperatureOrBuilder> getAuxiliaryDrainAtTempFieldBuilder() {
                if (this.auxiliaryDrainAtTempBuilder_ == null) {
                    this.auxiliaryDrainAtTempBuilder_ = new RepeatedFieldBuilderV3<>(this.auxiliaryDrainAtTemp_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.auxiliaryDrainAtTemp_ = null;
                }
                return this.auxiliaryDrainAtTempBuilder_;
            }

            private RepeatedFieldBuilderV3<DrainAtTime, DrainAtTime.Builder, DrainAtTimeOrBuilder> getAuxiliaryDrainAtTimeFieldBuilder() {
                if (this.auxiliaryDrainAtTimeBuilder_ == null) {
                    this.auxiliaryDrainAtTimeBuilder_ = new RepeatedFieldBuilderV3<>(this.auxiliaryDrainAtTime_, (this.bitField0_ & 1) != 0, getParentForChildren(), isClean());
                    this.auxiliaryDrainAtTime_ = null;
                }
                return this.auxiliaryDrainAtTimeBuilder_;
            }

            private SingleFieldBuilderV3<BatteryLosses, BatteryLosses.Builder, BatteryLossesOrBuilder> getBatteryLossesFieldBuilder() {
                if (this.batteryLossesBuilder_ == null) {
                    this.batteryLossesBuilder_ = new SingleFieldBuilderV3<>(getBatteryLosses(), getParentForChildren(), isClean());
                    this.batteryLosses_ = null;
                }
                return this.batteryLossesBuilder_;
            }

            private SingleFieldBuilderV3<ChargingCurves, ChargingCurves.Builder, ChargingCurvesOrBuilder> getChargingCurvesFieldBuilder() {
                if (this.chargingCurvesBuilder_ == null) {
                    this.chargingCurvesBuilder_ = new SingleFieldBuilderV3<>(getChargingCurves(), getParentForChildren(), isClean());
                    this.chargingCurves_ = null;
                }
                return this.chargingCurvesBuilder_;
            }

            private SingleFieldBuilderV3<ChargingTime, ChargingTime.Builder, ChargingTimeOrBuilder> getCurrentChargingTimeFieldBuilder() {
                if (this.currentChargingTimeBuilder_ == null) {
                    this.currentChargingTimeBuilder_ = new SingleFieldBuilderV3<>(getCurrentChargingTime(), getParentForChildren(), isClean());
                    this.currentChargingTime_ = null;
                }
                return this.currentChargingTimeBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return EnergyModel.internal_static_energy_model_VehicleEnergyModelData_descriptor;
            }

            private SingleFieldBuilderV3<DrivetrainLosses, DrivetrainLosses.Builder, DrivetrainLossesOrBuilder> getDrivetrainLossesFieldBuilder() {
                if (this.drivetrainLossesBuilder_ == null) {
                    this.drivetrainLossesBuilder_ = new SingleFieldBuilderV3<>(getDrivetrainLosses(), getParentForChildren(), isClean());
                    this.drivetrainLosses_ = null;
                }
                return this.drivetrainLossesBuilder_;
            }

            private SingleFieldBuilderV3<MaxRegenPower, MaxRegenPower.Builder, MaxRegenPowerOrBuilder> getMaxRegenPowerFieldBuilder() {
                if (this.maxRegenPowerBuilder_ == null) {
                    this.maxRegenPowerBuilder_ = new SingleFieldBuilderV3<>(getMaxRegenPower(), getParentForChildren(), isClean());
                    this.maxRegenPower_ = null;
                }
                return this.maxRegenPowerBuilder_;
            }

            private SingleFieldBuilderV3<RoadLoadForce, RoadLoadForce.Builder, RoadLoadForceOrBuilder> getRoadLoadFieldBuilder() {
                if (this.roadLoadBuilder_ == null) {
                    this.roadLoadBuilder_ = new SingleFieldBuilderV3<>(getRoadLoad(), getParentForChildren(), isClean());
                    this.roadLoad_ = null;
                }
                return this.roadLoadBuilder_;
            }

            private SingleFieldBuilderV3<VehicleInfo, VehicleInfo.Builder, VehicleInfoOrBuilder> getVehicleInfoFieldBuilder() {
                if (this.vehicleInfoBuilder_ == null) {
                    this.vehicleInfoBuilder_ = new SingleFieldBuilderV3<>(getVehicleInfo(), getParentForChildren(), isClean());
                    this.vehicleInfo_ = null;
                }
                return this.vehicleInfoBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getAuxiliaryDrainAtTimeFieldBuilder();
                    getAuxiliaryDrainAtTempFieldBuilder();
                }
            }

            public Builder addAllAuxiliaryDrainAtTemp(Iterable<? extends DrainAtTemperature> iterable) {
                RepeatedFieldBuilderV3<DrainAtTemperature, DrainAtTemperature.Builder, DrainAtTemperatureOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTempBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureAuxiliaryDrainAtTempIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.auxiliaryDrainAtTemp_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addAllAuxiliaryDrainAtTime(Iterable<? extends DrainAtTime> iterable) {
                RepeatedFieldBuilderV3<DrainAtTime, DrainAtTime.Builder, DrainAtTimeOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTimeBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureAuxiliaryDrainAtTimeIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.auxiliaryDrainAtTime_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public Builder addAuxiliaryDrainAtTemp(DrainAtTemperature drainAtTemperature) {
                RepeatedFieldBuilderV3<DrainAtTemperature, DrainAtTemperature.Builder, DrainAtTemperatureOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTempBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    drainAtTemperature.getClass();
                    ensureAuxiliaryDrainAtTempIsMutable();
                    this.auxiliaryDrainAtTemp_.add(drainAtTemperature);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(drainAtTemperature);
                }
                return this;
            }

            public DrainAtTemperature.Builder addAuxiliaryDrainAtTempBuilder() {
                return (DrainAtTemperature.Builder) getAuxiliaryDrainAtTempFieldBuilder().addBuilder(DrainAtTemperature.getDefaultInstance());
            }

            public Builder addAuxiliaryDrainAtTime(DrainAtTime drainAtTime) {
                RepeatedFieldBuilderV3<DrainAtTime, DrainAtTime.Builder, DrainAtTimeOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTimeBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    drainAtTime.getClass();
                    ensureAuxiliaryDrainAtTimeIsMutable();
                    this.auxiliaryDrainAtTime_.add(drainAtTime);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(drainAtTime);
                }
                return this;
            }

            public DrainAtTime.Builder addAuxiliaryDrainAtTimeBuilder() {
                return (DrainAtTime.Builder) getAuxiliaryDrainAtTimeFieldBuilder().addBuilder(DrainAtTime.getDefaultInstance());
            }

            public Builder clearAuxiliaryDrainAtTemp() {
                RepeatedFieldBuilderV3<DrainAtTemperature, DrainAtTemperature.Builder, DrainAtTemperatureOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTempBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.auxiliaryDrainAtTemp_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder clearAuxiliaryDrainAtTime() {
                RepeatedFieldBuilderV3<DrainAtTime, DrainAtTime.Builder, DrainAtTimeOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTimeBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.auxiliaryDrainAtTime_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public Builder clearBatteryLosses() {
                if (this.batteryLossesBuilder_ == null) {
                    this.batteryLosses_ = null;
                    onChanged();
                } else {
                    this.batteryLosses_ = null;
                    this.batteryLossesBuilder_ = null;
                }
                return this;
            }

            public Builder clearChargingCurves() {
                if (this.chargingCurvesBuilder_ == null) {
                    this.chargingCurves_ = null;
                    onChanged();
                } else {
                    this.chargingCurves_ = null;
                    this.chargingCurvesBuilder_ = null;
                }
                return this;
            }

            public Builder clearCurrentChargingTime() {
                if (this.currentChargingTimeBuilder_ == null) {
                    this.currentChargingTime_ = null;
                    onChanged();
                } else {
                    this.currentChargingTime_ = null;
                    this.currentChargingTimeBuilder_ = null;
                }
                return this;
            }

            public Builder clearDrivetrainLosses() {
                if (this.drivetrainLossesBuilder_ == null) {
                    this.drivetrainLosses_ = null;
                    onChanged();
                } else {
                    this.drivetrainLosses_ = null;
                    this.drivetrainLossesBuilder_ = null;
                }
                return this;
            }

            public Builder clearMaxRegenPower() {
                if (this.maxRegenPowerBuilder_ == null) {
                    this.maxRegenPower_ = null;
                    onChanged();
                } else {
                    this.maxRegenPower_ = null;
                    this.maxRegenPowerBuilder_ = null;
                }
                return this;
            }

            public Builder clearRoadLoad() {
                if (this.roadLoadBuilder_ == null) {
                    this.roadLoad_ = null;
                    onChanged();
                } else {
                    this.roadLoad_ = null;
                    this.roadLoadBuilder_ = null;
                }
                return this;
            }

            public Builder clearVehicleInfo() {
                if (this.vehicleInfoBuilder_ == null) {
                    this.vehicleInfo_ = null;
                    onChanged();
                } else {
                    this.vehicleInfo_ = null;
                    this.vehicleInfoBuilder_ = null;
                }
                return this;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public DrainAtTemperature getAuxiliaryDrainAtTemp(int i2) {
                RepeatedFieldBuilderV3<DrainAtTemperature, DrainAtTemperature.Builder, DrainAtTemperatureOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTempBuilder_;
                return repeatedFieldBuilderV3 == null ? this.auxiliaryDrainAtTemp_.get(i2) : (DrainAtTemperature) repeatedFieldBuilderV3.getMessage(i2);
            }

            public DrainAtTemperature.Builder getAuxiliaryDrainAtTempBuilder(int i2) {
                return (DrainAtTemperature.Builder) getAuxiliaryDrainAtTempFieldBuilder().getBuilder(i2);
            }

            public List<DrainAtTemperature.Builder> getAuxiliaryDrainAtTempBuilderList() {
                return getAuxiliaryDrainAtTempFieldBuilder().getBuilderList();
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public int getAuxiliaryDrainAtTempCount() {
                RepeatedFieldBuilderV3<DrainAtTemperature, DrainAtTemperature.Builder, DrainAtTemperatureOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTempBuilder_;
                return repeatedFieldBuilderV3 == null ? this.auxiliaryDrainAtTemp_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public List<DrainAtTemperature> getAuxiliaryDrainAtTempList() {
                RepeatedFieldBuilderV3<DrainAtTemperature, DrainAtTemperature.Builder, DrainAtTemperatureOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTempBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.auxiliaryDrainAtTemp_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public DrainAtTemperatureOrBuilder getAuxiliaryDrainAtTempOrBuilder(int i2) {
                RepeatedFieldBuilderV3<DrainAtTemperature, DrainAtTemperature.Builder, DrainAtTemperatureOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTempBuilder_;
                return repeatedFieldBuilderV3 == null ? this.auxiliaryDrainAtTemp_.get(i2) : (DrainAtTemperatureOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i2);
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public List<? extends DrainAtTemperatureOrBuilder> getAuxiliaryDrainAtTempOrBuilderList() {
                RepeatedFieldBuilderV3<DrainAtTemperature, DrainAtTemperature.Builder, DrainAtTemperatureOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTempBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.auxiliaryDrainAtTemp_);
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public DrainAtTime getAuxiliaryDrainAtTime(int i2) {
                RepeatedFieldBuilderV3<DrainAtTime, DrainAtTime.Builder, DrainAtTimeOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTimeBuilder_;
                return repeatedFieldBuilderV3 == null ? this.auxiliaryDrainAtTime_.get(i2) : (DrainAtTime) repeatedFieldBuilderV3.getMessage(i2);
            }

            public DrainAtTime.Builder getAuxiliaryDrainAtTimeBuilder(int i2) {
                return (DrainAtTime.Builder) getAuxiliaryDrainAtTimeFieldBuilder().getBuilder(i2);
            }

            public List<DrainAtTime.Builder> getAuxiliaryDrainAtTimeBuilderList() {
                return getAuxiliaryDrainAtTimeFieldBuilder().getBuilderList();
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public int getAuxiliaryDrainAtTimeCount() {
                RepeatedFieldBuilderV3<DrainAtTime, DrainAtTime.Builder, DrainAtTimeOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTimeBuilder_;
                return repeatedFieldBuilderV3 == null ? this.auxiliaryDrainAtTime_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public List<DrainAtTime> getAuxiliaryDrainAtTimeList() {
                RepeatedFieldBuilderV3<DrainAtTime, DrainAtTime.Builder, DrainAtTimeOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTimeBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.auxiliaryDrainAtTime_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public DrainAtTimeOrBuilder getAuxiliaryDrainAtTimeOrBuilder(int i2) {
                RepeatedFieldBuilderV3<DrainAtTime, DrainAtTime.Builder, DrainAtTimeOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTimeBuilder_;
                return repeatedFieldBuilderV3 == null ? this.auxiliaryDrainAtTime_.get(i2) : (DrainAtTimeOrBuilder) repeatedFieldBuilderV3.getMessageOrBuilder(i2);
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public List<? extends DrainAtTimeOrBuilder> getAuxiliaryDrainAtTimeOrBuilderList() {
                RepeatedFieldBuilderV3<DrainAtTime, DrainAtTime.Builder, DrainAtTimeOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTimeBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.auxiliaryDrainAtTime_);
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public BatteryLosses getBatteryLosses() {
                SingleFieldBuilderV3<BatteryLosses, BatteryLosses.Builder, BatteryLossesOrBuilder> singleFieldBuilderV3 = this.batteryLossesBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (BatteryLosses) singleFieldBuilderV3.getMessage();
                }
                BatteryLosses batteryLosses = this.batteryLosses_;
                return batteryLosses == null ? BatteryLosses.getDefaultInstance() : batteryLosses;
            }

            public BatteryLosses.Builder getBatteryLossesBuilder() {
                onChanged();
                return (BatteryLosses.Builder) getBatteryLossesFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public BatteryLossesOrBuilder getBatteryLossesOrBuilder() {
                SingleFieldBuilderV3<BatteryLosses, BatteryLosses.Builder, BatteryLossesOrBuilder> singleFieldBuilderV3 = this.batteryLossesBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (BatteryLossesOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                BatteryLosses batteryLosses = this.batteryLosses_;
                return batteryLosses == null ? BatteryLosses.getDefaultInstance() : batteryLosses;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public ChargingCurves getChargingCurves() {
                SingleFieldBuilderV3<ChargingCurves, ChargingCurves.Builder, ChargingCurvesOrBuilder> singleFieldBuilderV3 = this.chargingCurvesBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (ChargingCurves) singleFieldBuilderV3.getMessage();
                }
                ChargingCurves chargingCurves = this.chargingCurves_;
                return chargingCurves == null ? ChargingCurves.getDefaultInstance() : chargingCurves;
            }

            public ChargingCurves.Builder getChargingCurvesBuilder() {
                onChanged();
                return (ChargingCurves.Builder) getChargingCurvesFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public ChargingCurvesOrBuilder getChargingCurvesOrBuilder() {
                SingleFieldBuilderV3<ChargingCurves, ChargingCurves.Builder, ChargingCurvesOrBuilder> singleFieldBuilderV3 = this.chargingCurvesBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (ChargingCurvesOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                ChargingCurves chargingCurves = this.chargingCurves_;
                return chargingCurves == null ? ChargingCurves.getDefaultInstance() : chargingCurves;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public ChargingTime getCurrentChargingTime() {
                SingleFieldBuilderV3<ChargingTime, ChargingTime.Builder, ChargingTimeOrBuilder> singleFieldBuilderV3 = this.currentChargingTimeBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (ChargingTime) singleFieldBuilderV3.getMessage();
                }
                ChargingTime chargingTime = this.currentChargingTime_;
                return chargingTime == null ? ChargingTime.getDefaultInstance() : chargingTime;
            }

            public ChargingTime.Builder getCurrentChargingTimeBuilder() {
                onChanged();
                return (ChargingTime.Builder) getCurrentChargingTimeFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public ChargingTimeOrBuilder getCurrentChargingTimeOrBuilder() {
                SingleFieldBuilderV3<ChargingTime, ChargingTime.Builder, ChargingTimeOrBuilder> singleFieldBuilderV3 = this.currentChargingTimeBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (ChargingTimeOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                ChargingTime chargingTime = this.currentChargingTime_;
                return chargingTime == null ? ChargingTime.getDefaultInstance() : chargingTime;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return EnergyModel.internal_static_energy_model_VehicleEnergyModelData_descriptor;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public DrivetrainLosses getDrivetrainLosses() {
                SingleFieldBuilderV3<DrivetrainLosses, DrivetrainLosses.Builder, DrivetrainLossesOrBuilder> singleFieldBuilderV3 = this.drivetrainLossesBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (DrivetrainLosses) singleFieldBuilderV3.getMessage();
                }
                DrivetrainLosses drivetrainLosses = this.drivetrainLosses_;
                return drivetrainLosses == null ? DrivetrainLosses.getDefaultInstance() : drivetrainLosses;
            }

            public DrivetrainLosses.Builder getDrivetrainLossesBuilder() {
                onChanged();
                return (DrivetrainLosses.Builder) getDrivetrainLossesFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public DrivetrainLossesOrBuilder getDrivetrainLossesOrBuilder() {
                SingleFieldBuilderV3<DrivetrainLosses, DrivetrainLosses.Builder, DrivetrainLossesOrBuilder> singleFieldBuilderV3 = this.drivetrainLossesBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (DrivetrainLossesOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                DrivetrainLosses drivetrainLosses = this.drivetrainLosses_;
                return drivetrainLosses == null ? DrivetrainLosses.getDefaultInstance() : drivetrainLosses;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public MaxRegenPower getMaxRegenPower() {
                SingleFieldBuilderV3<MaxRegenPower, MaxRegenPower.Builder, MaxRegenPowerOrBuilder> singleFieldBuilderV3 = this.maxRegenPowerBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (MaxRegenPower) singleFieldBuilderV3.getMessage();
                }
                MaxRegenPower maxRegenPower = this.maxRegenPower_;
                return maxRegenPower == null ? MaxRegenPower.getDefaultInstance() : maxRegenPower;
            }

            public MaxRegenPower.Builder getMaxRegenPowerBuilder() {
                onChanged();
                return (MaxRegenPower.Builder) getMaxRegenPowerFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public MaxRegenPowerOrBuilder getMaxRegenPowerOrBuilder() {
                SingleFieldBuilderV3<MaxRegenPower, MaxRegenPower.Builder, MaxRegenPowerOrBuilder> singleFieldBuilderV3 = this.maxRegenPowerBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (MaxRegenPowerOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                MaxRegenPower maxRegenPower = this.maxRegenPower_;
                return maxRegenPower == null ? MaxRegenPower.getDefaultInstance() : maxRegenPower;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public RoadLoadForce getRoadLoad() {
                SingleFieldBuilderV3<RoadLoadForce, RoadLoadForce.Builder, RoadLoadForceOrBuilder> singleFieldBuilderV3 = this.roadLoadBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (RoadLoadForce) singleFieldBuilderV3.getMessage();
                }
                RoadLoadForce roadLoadForce = this.roadLoad_;
                return roadLoadForce == null ? RoadLoadForce.getDefaultInstance() : roadLoadForce;
            }

            public RoadLoadForce.Builder getRoadLoadBuilder() {
                onChanged();
                return (RoadLoadForce.Builder) getRoadLoadFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public RoadLoadForceOrBuilder getRoadLoadOrBuilder() {
                SingleFieldBuilderV3<RoadLoadForce, RoadLoadForce.Builder, RoadLoadForceOrBuilder> singleFieldBuilderV3 = this.roadLoadBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (RoadLoadForceOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                RoadLoadForce roadLoadForce = this.roadLoad_;
                return roadLoadForce == null ? RoadLoadForce.getDefaultInstance() : roadLoadForce;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public VehicleInfo getVehicleInfo() {
                SingleFieldBuilderV3<VehicleInfo, VehicleInfo.Builder, VehicleInfoOrBuilder> singleFieldBuilderV3 = this.vehicleInfoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (VehicleInfo) singleFieldBuilderV3.getMessage();
                }
                VehicleInfo vehicleInfo = this.vehicleInfo_;
                return vehicleInfo == null ? VehicleInfo.getDefaultInstance() : vehicleInfo;
            }

            public VehicleInfo.Builder getVehicleInfoBuilder() {
                onChanged();
                return (VehicleInfo.Builder) getVehicleInfoFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public VehicleInfoOrBuilder getVehicleInfoOrBuilder() {
                SingleFieldBuilderV3<VehicleInfo, VehicleInfo.Builder, VehicleInfoOrBuilder> singleFieldBuilderV3 = this.vehicleInfoBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (VehicleInfoOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                VehicleInfo vehicleInfo = this.vehicleInfo_;
                return vehicleInfo == null ? VehicleInfo.getDefaultInstance() : vehicleInfo;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public boolean hasBatteryLosses() {
                return (this.batteryLossesBuilder_ == null && this.batteryLosses_ == null) ? false : true;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public boolean hasChargingCurves() {
                return (this.chargingCurvesBuilder_ == null && this.chargingCurves_ == null) ? false : true;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public boolean hasCurrentChargingTime() {
                return (this.currentChargingTimeBuilder_ == null && this.currentChargingTime_ == null) ? false : true;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public boolean hasDrivetrainLosses() {
                return (this.drivetrainLossesBuilder_ == null && this.drivetrainLosses_ == null) ? false : true;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public boolean hasMaxRegenPower() {
                return (this.maxRegenPowerBuilder_ == null && this.maxRegenPower_ == null) ? false : true;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public boolean hasRoadLoad() {
                return (this.roadLoadBuilder_ == null && this.roadLoad_ == null) ? false : true;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleEnergyModelDataOrBuilder
            public boolean hasVehicleInfo() {
                return (this.vehicleInfoBuilder_ == null && this.vehicleInfo_ == null) ? false : true;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return EnergyModel.internal_static_energy_model_VehicleEnergyModelData_fieldAccessorTable.ensureFieldAccessorsInitialized(VehicleEnergyModelData.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeBatteryLosses(BatteryLosses batteryLosses) {
                SingleFieldBuilderV3<BatteryLosses, BatteryLosses.Builder, BatteryLossesOrBuilder> singleFieldBuilderV3 = this.batteryLossesBuilder_;
                if (singleFieldBuilderV3 == null) {
                    BatteryLosses batteryLosses2 = this.batteryLosses_;
                    if (batteryLosses2 != null) {
                        this.batteryLosses_ = BatteryLosses.newBuilder(batteryLosses2).mergeFrom(batteryLosses).buildPartial();
                    } else {
                        this.batteryLosses_ = batteryLosses;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(batteryLosses);
                }
                return this;
            }

            public Builder mergeChargingCurves(ChargingCurves chargingCurves) {
                SingleFieldBuilderV3<ChargingCurves, ChargingCurves.Builder, ChargingCurvesOrBuilder> singleFieldBuilderV3 = this.chargingCurvesBuilder_;
                if (singleFieldBuilderV3 == null) {
                    ChargingCurves chargingCurves2 = this.chargingCurves_;
                    if (chargingCurves2 != null) {
                        this.chargingCurves_ = ChargingCurves.newBuilder(chargingCurves2).mergeFrom(chargingCurves).buildPartial();
                    } else {
                        this.chargingCurves_ = chargingCurves;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(chargingCurves);
                }
                return this;
            }

            public Builder mergeCurrentChargingTime(ChargingTime chargingTime) {
                SingleFieldBuilderV3<ChargingTime, ChargingTime.Builder, ChargingTimeOrBuilder> singleFieldBuilderV3 = this.currentChargingTimeBuilder_;
                if (singleFieldBuilderV3 == null) {
                    ChargingTime chargingTime2 = this.currentChargingTime_;
                    if (chargingTime2 != null) {
                        this.currentChargingTime_ = ChargingTime.newBuilder(chargingTime2).mergeFrom(chargingTime).buildPartial();
                    } else {
                        this.currentChargingTime_ = chargingTime;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(chargingTime);
                }
                return this;
            }

            public Builder mergeDrivetrainLosses(DrivetrainLosses drivetrainLosses) {
                SingleFieldBuilderV3<DrivetrainLosses, DrivetrainLosses.Builder, DrivetrainLossesOrBuilder> singleFieldBuilderV3 = this.drivetrainLossesBuilder_;
                if (singleFieldBuilderV3 == null) {
                    DrivetrainLosses drivetrainLosses2 = this.drivetrainLosses_;
                    if (drivetrainLosses2 != null) {
                        this.drivetrainLosses_ = DrivetrainLosses.newBuilder(drivetrainLosses2).mergeFrom(drivetrainLosses).buildPartial();
                    } else {
                        this.drivetrainLosses_ = drivetrainLosses;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(drivetrainLosses);
                }
                return this;
            }

            public Builder mergeMaxRegenPower(MaxRegenPower maxRegenPower) {
                SingleFieldBuilderV3<MaxRegenPower, MaxRegenPower.Builder, MaxRegenPowerOrBuilder> singleFieldBuilderV3 = this.maxRegenPowerBuilder_;
                if (singleFieldBuilderV3 == null) {
                    MaxRegenPower maxRegenPower2 = this.maxRegenPower_;
                    if (maxRegenPower2 != null) {
                        this.maxRegenPower_ = MaxRegenPower.newBuilder(maxRegenPower2).mergeFrom(maxRegenPower).buildPartial();
                    } else {
                        this.maxRegenPower_ = maxRegenPower;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(maxRegenPower);
                }
                return this;
            }

            public Builder mergeRoadLoad(RoadLoadForce roadLoadForce) {
                SingleFieldBuilderV3<RoadLoadForce, RoadLoadForce.Builder, RoadLoadForceOrBuilder> singleFieldBuilderV3 = this.roadLoadBuilder_;
                if (singleFieldBuilderV3 == null) {
                    RoadLoadForce roadLoadForce2 = this.roadLoad_;
                    if (roadLoadForce2 != null) {
                        this.roadLoad_ = RoadLoadForce.newBuilder(roadLoadForce2).mergeFrom(roadLoadForce).buildPartial();
                    } else {
                        this.roadLoad_ = roadLoadForce;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(roadLoadForce);
                }
                return this;
            }

            public Builder mergeVehicleInfo(VehicleInfo vehicleInfo) {
                SingleFieldBuilderV3<VehicleInfo, VehicleInfo.Builder, VehicleInfoOrBuilder> singleFieldBuilderV3 = this.vehicleInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    VehicleInfo vehicleInfo2 = this.vehicleInfo_;
                    if (vehicleInfo2 != null) {
                        this.vehicleInfo_ = VehicleInfo.newBuilder(vehicleInfo2).mergeFrom(vehicleInfo).buildPartial();
                    } else {
                        this.vehicleInfo_ = vehicleInfo;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(vehicleInfo);
                }
                return this;
            }

            public Builder removeAuxiliaryDrainAtTemp(int i2) {
                RepeatedFieldBuilderV3<DrainAtTemperature, DrainAtTemperature.Builder, DrainAtTemperatureOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTempBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureAuxiliaryDrainAtTempIsMutable();
                    this.auxiliaryDrainAtTemp_.remove(i2);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i2);
                }
                return this;
            }

            public Builder removeAuxiliaryDrainAtTime(int i2) {
                RepeatedFieldBuilderV3<DrainAtTime, DrainAtTime.Builder, DrainAtTimeOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTimeBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureAuxiliaryDrainAtTimeIsMutable();
                    this.auxiliaryDrainAtTime_.remove(i2);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i2);
                }
                return this;
            }

            public Builder setAuxiliaryDrainAtTemp(int i2, DrainAtTemperature drainAtTemperature) {
                RepeatedFieldBuilderV3<DrainAtTemperature, DrainAtTemperature.Builder, DrainAtTemperatureOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTempBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    drainAtTemperature.getClass();
                    ensureAuxiliaryDrainAtTempIsMutable();
                    this.auxiliaryDrainAtTemp_.set(i2, drainAtTemperature);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i2, drainAtTemperature);
                }
                return this;
            }

            public Builder setAuxiliaryDrainAtTime(int i2, DrainAtTime drainAtTime) {
                RepeatedFieldBuilderV3<DrainAtTime, DrainAtTime.Builder, DrainAtTimeOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTimeBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    drainAtTime.getClass();
                    ensureAuxiliaryDrainAtTimeIsMutable();
                    this.auxiliaryDrainAtTime_.set(i2, drainAtTime);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i2, drainAtTime);
                }
                return this;
            }

            public Builder setBatteryLosses(BatteryLosses batteryLosses) {
                SingleFieldBuilderV3<BatteryLosses, BatteryLosses.Builder, BatteryLossesOrBuilder> singleFieldBuilderV3 = this.batteryLossesBuilder_;
                if (singleFieldBuilderV3 == null) {
                    batteryLosses.getClass();
                    this.batteryLosses_ = batteryLosses;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(batteryLosses);
                }
                return this;
            }

            public Builder setChargingCurves(ChargingCurves chargingCurves) {
                SingleFieldBuilderV3<ChargingCurves, ChargingCurves.Builder, ChargingCurvesOrBuilder> singleFieldBuilderV3 = this.chargingCurvesBuilder_;
                if (singleFieldBuilderV3 == null) {
                    chargingCurves.getClass();
                    this.chargingCurves_ = chargingCurves;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(chargingCurves);
                }
                return this;
            }

            public Builder setCurrentChargingTime(ChargingTime chargingTime) {
                SingleFieldBuilderV3<ChargingTime, ChargingTime.Builder, ChargingTimeOrBuilder> singleFieldBuilderV3 = this.currentChargingTimeBuilder_;
                if (singleFieldBuilderV3 == null) {
                    chargingTime.getClass();
                    this.currentChargingTime_ = chargingTime;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(chargingTime);
                }
                return this;
            }

            public Builder setDrivetrainLosses(DrivetrainLosses drivetrainLosses) {
                SingleFieldBuilderV3<DrivetrainLosses, DrivetrainLosses.Builder, DrivetrainLossesOrBuilder> singleFieldBuilderV3 = this.drivetrainLossesBuilder_;
                if (singleFieldBuilderV3 == null) {
                    drivetrainLosses.getClass();
                    this.drivetrainLosses_ = drivetrainLosses;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(drivetrainLosses);
                }
                return this;
            }

            public Builder setMaxRegenPower(MaxRegenPower maxRegenPower) {
                SingleFieldBuilderV3<MaxRegenPower, MaxRegenPower.Builder, MaxRegenPowerOrBuilder> singleFieldBuilderV3 = this.maxRegenPowerBuilder_;
                if (singleFieldBuilderV3 == null) {
                    maxRegenPower.getClass();
                    this.maxRegenPower_ = maxRegenPower;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(maxRegenPower);
                }
                return this;
            }

            public Builder setRoadLoad(RoadLoadForce roadLoadForce) {
                SingleFieldBuilderV3<RoadLoadForce, RoadLoadForce.Builder, RoadLoadForceOrBuilder> singleFieldBuilderV3 = this.roadLoadBuilder_;
                if (singleFieldBuilderV3 == null) {
                    roadLoadForce.getClass();
                    this.roadLoad_ = roadLoadForce;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(roadLoadForce);
                }
                return this;
            }

            public Builder setVehicleInfo(VehicleInfo vehicleInfo) {
                SingleFieldBuilderV3<VehicleInfo, VehicleInfo.Builder, VehicleInfoOrBuilder> singleFieldBuilderV3 = this.vehicleInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    vehicleInfo.getClass();
                    this.vehicleInfo_ = vehicleInfo;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(vehicleInfo);
                }
                return this;
            }

            private Builder() {
                this.auxiliaryDrainAtTime_ = Collections.emptyList();
                this.auxiliaryDrainAtTemp_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public VehicleEnergyModelData build() {
                VehicleEnergyModelData vehicleEnergyModelDataBuildPartial = buildPartial();
                if (vehicleEnergyModelDataBuildPartial.isInitialized()) {
                    return vehicleEnergyModelDataBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) vehicleEnergyModelDataBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public VehicleEnergyModelData buildPartial() {
                VehicleEnergyModelData vehicleEnergyModelData = new VehicleEnergyModelData(this);
                SingleFieldBuilderV3<VehicleInfo, VehicleInfo.Builder, VehicleInfoOrBuilder> singleFieldBuilderV3 = this.vehicleInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    vehicleEnergyModelData.vehicleInfo_ = this.vehicleInfo_;
                } else {
                    vehicleEnergyModelData.vehicleInfo_ = (VehicleInfo) singleFieldBuilderV3.build();
                }
                SingleFieldBuilderV3<RoadLoadForce, RoadLoadForce.Builder, RoadLoadForceOrBuilder> singleFieldBuilderV4 = this.roadLoadBuilder_;
                if (singleFieldBuilderV4 == null) {
                    vehicleEnergyModelData.roadLoad_ = this.roadLoad_;
                } else {
                    vehicleEnergyModelData.roadLoad_ = (RoadLoadForce) singleFieldBuilderV4.build();
                }
                SingleFieldBuilderV3<DrivetrainLosses, DrivetrainLosses.Builder, DrivetrainLossesOrBuilder> singleFieldBuilderV5 = this.drivetrainLossesBuilder_;
                if (singleFieldBuilderV5 == null) {
                    vehicleEnergyModelData.drivetrainLosses_ = this.drivetrainLosses_;
                } else {
                    vehicleEnergyModelData.drivetrainLosses_ = (DrivetrainLosses) singleFieldBuilderV5.build();
                }
                SingleFieldBuilderV3<MaxRegenPower, MaxRegenPower.Builder, MaxRegenPowerOrBuilder> singleFieldBuilderV6 = this.maxRegenPowerBuilder_;
                if (singleFieldBuilderV6 == null) {
                    vehicleEnergyModelData.maxRegenPower_ = this.maxRegenPower_;
                } else {
                    vehicleEnergyModelData.maxRegenPower_ = (MaxRegenPower) singleFieldBuilderV6.build();
                }
                SingleFieldBuilderV3<BatteryLosses, BatteryLosses.Builder, BatteryLossesOrBuilder> singleFieldBuilderV7 = this.batteryLossesBuilder_;
                if (singleFieldBuilderV7 == null) {
                    vehicleEnergyModelData.batteryLosses_ = this.batteryLosses_;
                } else {
                    vehicleEnergyModelData.batteryLosses_ = (BatteryLosses) singleFieldBuilderV7.build();
                }
                RepeatedFieldBuilderV3<DrainAtTime, DrainAtTime.Builder, DrainAtTimeOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTimeBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.auxiliaryDrainAtTime_ = Collections.unmodifiableList(this.auxiliaryDrainAtTime_);
                        this.bitField0_ &= -2;
                    }
                    vehicleEnergyModelData.auxiliaryDrainAtTime_ = this.auxiliaryDrainAtTime_;
                } else {
                    vehicleEnergyModelData.auxiliaryDrainAtTime_ = repeatedFieldBuilderV3.build();
                }
                RepeatedFieldBuilderV3<DrainAtTemperature, DrainAtTemperature.Builder, DrainAtTemperatureOrBuilder> repeatedFieldBuilderV4 = this.auxiliaryDrainAtTempBuilder_;
                if (repeatedFieldBuilderV4 == null) {
                    if ((this.bitField0_ & 2) != 0) {
                        this.auxiliaryDrainAtTemp_ = Collections.unmodifiableList(this.auxiliaryDrainAtTemp_);
                        this.bitField0_ &= -3;
                    }
                    vehicleEnergyModelData.auxiliaryDrainAtTemp_ = this.auxiliaryDrainAtTemp_;
                } else {
                    vehicleEnergyModelData.auxiliaryDrainAtTemp_ = repeatedFieldBuilderV4.build();
                }
                SingleFieldBuilderV3<ChargingCurves, ChargingCurves.Builder, ChargingCurvesOrBuilder> singleFieldBuilderV8 = this.chargingCurvesBuilder_;
                if (singleFieldBuilderV8 == null) {
                    vehicleEnergyModelData.chargingCurves_ = this.chargingCurves_;
                } else {
                    vehicleEnergyModelData.chargingCurves_ = (ChargingCurves) singleFieldBuilderV8.build();
                }
                SingleFieldBuilderV3<ChargingTime, ChargingTime.Builder, ChargingTimeOrBuilder> singleFieldBuilderV9 = this.currentChargingTimeBuilder_;
                if (singleFieldBuilderV9 == null) {
                    vehicleEnergyModelData.currentChargingTime_ = this.currentChargingTime_;
                } else {
                    vehicleEnergyModelData.currentChargingTime_ = (ChargingTime) singleFieldBuilderV9.build();
                }
                onBuilt();
                return vehicleEnergyModelData;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public VehicleEnergyModelData getDefaultInstanceForType() {
                return VehicleEnergyModelData.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            public DrainAtTemperature.Builder addAuxiliaryDrainAtTempBuilder(int i2) {
                return (DrainAtTemperature.Builder) getAuxiliaryDrainAtTempFieldBuilder().addBuilder(i2, DrainAtTemperature.getDefaultInstance());
            }

            public DrainAtTime.Builder addAuxiliaryDrainAtTimeBuilder(int i2) {
                return (DrainAtTime.Builder) getAuxiliaryDrainAtTimeFieldBuilder().addBuilder(i2, DrainAtTime.getDefaultInstance());
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                if (this.vehicleInfoBuilder_ == null) {
                    this.vehicleInfo_ = null;
                } else {
                    this.vehicleInfo_ = null;
                    this.vehicleInfoBuilder_ = null;
                }
                if (this.roadLoadBuilder_ == null) {
                    this.roadLoad_ = null;
                } else {
                    this.roadLoad_ = null;
                    this.roadLoadBuilder_ = null;
                }
                if (this.drivetrainLossesBuilder_ == null) {
                    this.drivetrainLosses_ = null;
                } else {
                    this.drivetrainLosses_ = null;
                    this.drivetrainLossesBuilder_ = null;
                }
                if (this.maxRegenPowerBuilder_ == null) {
                    this.maxRegenPower_ = null;
                } else {
                    this.maxRegenPower_ = null;
                    this.maxRegenPowerBuilder_ = null;
                }
                if (this.batteryLossesBuilder_ == null) {
                    this.batteryLosses_ = null;
                } else {
                    this.batteryLosses_ = null;
                    this.batteryLossesBuilder_ = null;
                }
                RepeatedFieldBuilderV3<DrainAtTime, DrainAtTime.Builder, DrainAtTimeOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTimeBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.auxiliaryDrainAtTime_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                RepeatedFieldBuilderV3<DrainAtTemperature, DrainAtTemperature.Builder, DrainAtTemperatureOrBuilder> repeatedFieldBuilderV4 = this.auxiliaryDrainAtTempBuilder_;
                if (repeatedFieldBuilderV4 == null) {
                    this.auxiliaryDrainAtTemp_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    repeatedFieldBuilderV4.clear();
                }
                if (this.chargingCurvesBuilder_ == null) {
                    this.chargingCurves_ = null;
                } else {
                    this.chargingCurves_ = null;
                    this.chargingCurvesBuilder_ = null;
                }
                if (this.currentChargingTimeBuilder_ == null) {
                    this.currentChargingTime_ = null;
                } else {
                    this.currentChargingTime_ = null;
                    this.currentChargingTimeBuilder_ = null;
                }
                return this;
            }

            public Builder setBatteryLosses(BatteryLosses.Builder builder) {
                SingleFieldBuilderV3<BatteryLosses, BatteryLosses.Builder, BatteryLossesOrBuilder> singleFieldBuilderV3 = this.batteryLossesBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.batteryLosses_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder setChargingCurves(ChargingCurves.Builder builder) {
                SingleFieldBuilderV3<ChargingCurves, ChargingCurves.Builder, ChargingCurvesOrBuilder> singleFieldBuilderV3 = this.chargingCurvesBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.chargingCurves_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder setCurrentChargingTime(ChargingTime.Builder builder) {
                SingleFieldBuilderV3<ChargingTime, ChargingTime.Builder, ChargingTimeOrBuilder> singleFieldBuilderV3 = this.currentChargingTimeBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.currentChargingTime_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder setDrivetrainLosses(DrivetrainLosses.Builder builder) {
                SingleFieldBuilderV3<DrivetrainLosses, DrivetrainLosses.Builder, DrivetrainLossesOrBuilder> singleFieldBuilderV3 = this.drivetrainLossesBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.drivetrainLosses_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder setMaxRegenPower(MaxRegenPower.Builder builder) {
                SingleFieldBuilderV3<MaxRegenPower, MaxRegenPower.Builder, MaxRegenPowerOrBuilder> singleFieldBuilderV3 = this.maxRegenPowerBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.maxRegenPower_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder setRoadLoad(RoadLoadForce.Builder builder) {
                SingleFieldBuilderV3<RoadLoadForce, RoadLoadForce.Builder, RoadLoadForceOrBuilder> singleFieldBuilderV3 = this.roadLoadBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.roadLoad_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder setVehicleInfo(VehicleInfo.Builder builder) {
                SingleFieldBuilderV3<VehicleInfo, VehicleInfo.Builder, VehicleInfoOrBuilder> singleFieldBuilderV3 = this.vehicleInfoBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.vehicleInfo_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.auxiliaryDrainAtTime_ = Collections.emptyList();
                this.auxiliaryDrainAtTemp_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addAuxiliaryDrainAtTemp(int i2, DrainAtTemperature drainAtTemperature) {
                RepeatedFieldBuilderV3<DrainAtTemperature, DrainAtTemperature.Builder, DrainAtTemperatureOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTempBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    drainAtTemperature.getClass();
                    ensureAuxiliaryDrainAtTempIsMutable();
                    this.auxiliaryDrainAtTemp_.add(i2, drainAtTemperature);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i2, drainAtTemperature);
                }
                return this;
            }

            public Builder addAuxiliaryDrainAtTime(int i2, DrainAtTime drainAtTime) {
                RepeatedFieldBuilderV3<DrainAtTime, DrainAtTime.Builder, DrainAtTimeOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTimeBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    drainAtTime.getClass();
                    ensureAuxiliaryDrainAtTimeIsMutable();
                    this.auxiliaryDrainAtTime_.add(i2, drainAtTime);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i2, drainAtTime);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof VehicleEnergyModelData) {
                    return mergeFrom((VehicleEnergyModelData) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setAuxiliaryDrainAtTemp(int i2, DrainAtTemperature.Builder builder) {
                RepeatedFieldBuilderV3<DrainAtTemperature, DrainAtTemperature.Builder, DrainAtTemperatureOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTempBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureAuxiliaryDrainAtTempIsMutable();
                    this.auxiliaryDrainAtTemp_.set(i2, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i2, builder.build());
                }
                return this;
            }

            public Builder setAuxiliaryDrainAtTime(int i2, DrainAtTime.Builder builder) {
                RepeatedFieldBuilderV3<DrainAtTime, DrainAtTime.Builder, DrainAtTimeOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTimeBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureAuxiliaryDrainAtTimeIsMutable();
                    this.auxiliaryDrainAtTime_.set(i2, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i2, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(VehicleEnergyModelData vehicleEnergyModelData) {
                if (vehicleEnergyModelData == VehicleEnergyModelData.getDefaultInstance()) {
                    return this;
                }
                if (vehicleEnergyModelData.hasVehicleInfo()) {
                    mergeVehicleInfo(vehicleEnergyModelData.getVehicleInfo());
                }
                if (vehicleEnergyModelData.hasRoadLoad()) {
                    mergeRoadLoad(vehicleEnergyModelData.getRoadLoad());
                }
                if (vehicleEnergyModelData.hasDrivetrainLosses()) {
                    mergeDrivetrainLosses(vehicleEnergyModelData.getDrivetrainLosses());
                }
                if (vehicleEnergyModelData.hasMaxRegenPower()) {
                    mergeMaxRegenPower(vehicleEnergyModelData.getMaxRegenPower());
                }
                if (vehicleEnergyModelData.hasBatteryLosses()) {
                    mergeBatteryLosses(vehicleEnergyModelData.getBatteryLosses());
                }
                if (this.auxiliaryDrainAtTimeBuilder_ == null) {
                    if (!vehicleEnergyModelData.auxiliaryDrainAtTime_.isEmpty()) {
                        if (this.auxiliaryDrainAtTime_.isEmpty()) {
                            this.auxiliaryDrainAtTime_ = vehicleEnergyModelData.auxiliaryDrainAtTime_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureAuxiliaryDrainAtTimeIsMutable();
                            this.auxiliaryDrainAtTime_.addAll(vehicleEnergyModelData.auxiliaryDrainAtTime_);
                        }
                        onChanged();
                    }
                } else if (!vehicleEnergyModelData.auxiliaryDrainAtTime_.isEmpty()) {
                    if (this.auxiliaryDrainAtTimeBuilder_.isEmpty()) {
                        this.auxiliaryDrainAtTimeBuilder_.dispose();
                        this.auxiliaryDrainAtTimeBuilder_ = null;
                        this.auxiliaryDrainAtTime_ = vehicleEnergyModelData.auxiliaryDrainAtTime_;
                        this.bitField0_ &= -2;
                        this.auxiliaryDrainAtTimeBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getAuxiliaryDrainAtTimeFieldBuilder() : null;
                    } else {
                        this.auxiliaryDrainAtTimeBuilder_.addAllMessages(vehicleEnergyModelData.auxiliaryDrainAtTime_);
                    }
                }
                if (this.auxiliaryDrainAtTempBuilder_ == null) {
                    if (!vehicleEnergyModelData.auxiliaryDrainAtTemp_.isEmpty()) {
                        if (this.auxiliaryDrainAtTemp_.isEmpty()) {
                            this.auxiliaryDrainAtTemp_ = vehicleEnergyModelData.auxiliaryDrainAtTemp_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureAuxiliaryDrainAtTempIsMutable();
                            this.auxiliaryDrainAtTemp_.addAll(vehicleEnergyModelData.auxiliaryDrainAtTemp_);
                        }
                        onChanged();
                    }
                } else if (!vehicleEnergyModelData.auxiliaryDrainAtTemp_.isEmpty()) {
                    if (this.auxiliaryDrainAtTempBuilder_.isEmpty()) {
                        this.auxiliaryDrainAtTempBuilder_.dispose();
                        this.auxiliaryDrainAtTempBuilder_ = null;
                        this.auxiliaryDrainAtTemp_ = vehicleEnergyModelData.auxiliaryDrainAtTemp_;
                        this.bitField0_ &= -3;
                        this.auxiliaryDrainAtTempBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getAuxiliaryDrainAtTempFieldBuilder() : null;
                    } else {
                        this.auxiliaryDrainAtTempBuilder_.addAllMessages(vehicleEnergyModelData.auxiliaryDrainAtTemp_);
                    }
                }
                if (vehicleEnergyModelData.hasChargingCurves()) {
                    mergeChargingCurves(vehicleEnergyModelData.getChargingCurves());
                }
                if (vehicleEnergyModelData.hasCurrentChargingTime()) {
                    mergeCurrentChargingTime(vehicleEnergyModelData.getCurrentChargingTime());
                }
                mergeUnknownFields(((GeneratedMessageV3) vehicleEnergyModelData).unknownFields);
                onChanged();
                return this;
            }

            public Builder addAuxiliaryDrainAtTemp(DrainAtTemperature.Builder builder) {
                RepeatedFieldBuilderV3<DrainAtTemperature, DrainAtTemperature.Builder, DrainAtTemperatureOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTempBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureAuxiliaryDrainAtTempIsMutable();
                    this.auxiliaryDrainAtTemp_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addAuxiliaryDrainAtTime(DrainAtTime.Builder builder) {
                RepeatedFieldBuilderV3<DrainAtTime, DrainAtTime.Builder, DrainAtTimeOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTimeBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureAuxiliaryDrainAtTimeIsMutable();
                    this.auxiliaryDrainAtTime_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public Builder addAuxiliaryDrainAtTemp(int i2, DrainAtTemperature.Builder builder) {
                RepeatedFieldBuilderV3<DrainAtTemperature, DrainAtTemperature.Builder, DrainAtTemperatureOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTempBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureAuxiliaryDrainAtTempIsMutable();
                    this.auxiliaryDrainAtTemp_.add(i2, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i2, builder.build());
                }
                return this;
            }

            public Builder addAuxiliaryDrainAtTime(int i2, DrainAtTime.Builder builder) {
                RepeatedFieldBuilderV3<DrainAtTime, DrainAtTime.Builder, DrainAtTimeOrBuilder> repeatedFieldBuilderV3 = this.auxiliaryDrainAtTimeBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureAuxiliaryDrainAtTimeIsMutable();
                    this.auxiliaryDrainAtTime_.add(i2, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i2, builder.build());
                }
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                VehicleEnergyModelData vehicleEnergyModelData = null;
                try {
                    try {
                        VehicleEnergyModelData vehicleEnergyModelData2 = (VehicleEnergyModelData) VehicleEnergyModelData.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (vehicleEnergyModelData2 != null) {
                            mergeFrom(vehicleEnergyModelData2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        VehicleEnergyModelData vehicleEnergyModelData3 = (VehicleEnergyModelData) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            vehicleEnergyModelData = vehicleEnergyModelData3;
                            if (vehicleEnergyModelData != null) {
                                mergeFrom(vehicleEnergyModelData);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (vehicleEnergyModelData != null) {
                        mergeFrom(vehicleEnergyModelData);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(VehicleEnergyModelData vehicleEnergyModelData) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(vehicleEnergyModelData);
        }

        public static VehicleEnergyModelData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private VehicleEnergyModelData(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static VehicleEnergyModelData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (VehicleEnergyModelData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static VehicleEnergyModelData parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public VehicleEnergyModelData getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static VehicleEnergyModelData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private VehicleEnergyModelData() {
            this.memoizedIsInitialized = (byte) -1;
            this.auxiliaryDrainAtTime_ = Collections.emptyList();
            this.auxiliaryDrainAtTemp_ = Collections.emptyList();
        }

        public static VehicleEnergyModelData parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static VehicleEnergyModelData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static VehicleEnergyModelData parseFrom(InputStream inputStream) {
            return (VehicleEnergyModelData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private VehicleEnergyModelData(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            int i2 = 0;
            while (!z2) {
                try {
                    try {
                        int tag = codedInputStream.readTag();
                        if (tag != 0) {
                            if (tag == 10) {
                                VehicleInfo vehicleInfo = this.vehicleInfo_;
                                VehicleInfo.Builder builder = vehicleInfo != null ? vehicleInfo.toBuilder() : null;
                                VehicleInfo vehicleInfo2 = (VehicleInfo) codedInputStream.readMessage(VehicleInfo.parser(), extensionRegistryLite);
                                this.vehicleInfo_ = vehicleInfo2;
                                if (builder != null) {
                                    builder.mergeFrom(vehicleInfo2);
                                    this.vehicleInfo_ = builder.buildPartial();
                                }
                            } else if (tag == 18) {
                                RoadLoadForce roadLoadForce = this.roadLoad_;
                                RoadLoadForce.Builder builder2 = roadLoadForce != null ? roadLoadForce.toBuilder() : null;
                                RoadLoadForce roadLoadForce2 = (RoadLoadForce) codedInputStream.readMessage(RoadLoadForce.parser(), extensionRegistryLite);
                                this.roadLoad_ = roadLoadForce2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(roadLoadForce2);
                                    this.roadLoad_ = builder2.buildPartial();
                                }
                            } else if (tag == 26) {
                                DrivetrainLosses drivetrainLosses = this.drivetrainLosses_;
                                DrivetrainLosses.Builder builder3 = drivetrainLosses != null ? drivetrainLosses.toBuilder() : null;
                                DrivetrainLosses drivetrainLosses2 = (DrivetrainLosses) codedInputStream.readMessage(DrivetrainLosses.parser(), extensionRegistryLite);
                                this.drivetrainLosses_ = drivetrainLosses2;
                                if (builder3 != null) {
                                    builder3.mergeFrom(drivetrainLosses2);
                                    this.drivetrainLosses_ = builder3.buildPartial();
                                }
                            } else if (tag == 34) {
                                MaxRegenPower maxRegenPower = this.maxRegenPower_;
                                MaxRegenPower.Builder builder4 = maxRegenPower != null ? maxRegenPower.toBuilder() : null;
                                MaxRegenPower maxRegenPower2 = (MaxRegenPower) codedInputStream.readMessage(MaxRegenPower.parser(), extensionRegistryLite);
                                this.maxRegenPower_ = maxRegenPower2;
                                if (builder4 != null) {
                                    builder4.mergeFrom(maxRegenPower2);
                                    this.maxRegenPower_ = builder4.buildPartial();
                                }
                            } else if (tag == 42) {
                                BatteryLosses batteryLosses = this.batteryLosses_;
                                BatteryLosses.Builder builder5 = batteryLosses != null ? batteryLosses.toBuilder() : null;
                                BatteryLosses batteryLosses2 = (BatteryLosses) codedInputStream.readMessage(BatteryLosses.parser(), extensionRegistryLite);
                                this.batteryLosses_ = batteryLosses2;
                                if (builder5 != null) {
                                    builder5.mergeFrom(batteryLosses2);
                                    this.batteryLosses_ = builder5.buildPartial();
                                }
                            } else if (tag == 50) {
                                int i3 = (i2 == true ? 1 : 0) & 1;
                                i2 = i2;
                                if (i3 == 0) {
                                    this.auxiliaryDrainAtTime_ = new ArrayList();
                                    i2 = (i2 == true ? 1 : 0) | 1;
                                }
                                this.auxiliaryDrainAtTime_.add((DrainAtTime) codedInputStream.readMessage(DrainAtTime.parser(), extensionRegistryLite));
                            } else if (tag == 58) {
                                int i4 = (i2 == true ? 1 : 0) & 2;
                                i2 = i2;
                                if (i4 == 0) {
                                    this.auxiliaryDrainAtTemp_ = new ArrayList();
                                    i2 = (i2 == true ? 1 : 0) | 2;
                                }
                                this.auxiliaryDrainAtTemp_.add((DrainAtTemperature) codedInputStream.readMessage(DrainAtTemperature.parser(), extensionRegistryLite));
                            } else if (tag == 66) {
                                ChargingCurves chargingCurves = this.chargingCurves_;
                                ChargingCurves.Builder builder6 = chargingCurves != null ? chargingCurves.toBuilder() : null;
                                ChargingCurves chargingCurves2 = (ChargingCurves) codedInputStream.readMessage(ChargingCurves.parser(), extensionRegistryLite);
                                this.chargingCurves_ = chargingCurves2;
                                if (builder6 != null) {
                                    builder6.mergeFrom(chargingCurves2);
                                    this.chargingCurves_ = builder6.buildPartial();
                                }
                            } else if (tag != 74) {
                                if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                }
                            } else {
                                ChargingTime chargingTime = this.currentChargingTime_;
                                ChargingTime.Builder builder7 = chargingTime != null ? chargingTime.toBuilder() : null;
                                ChargingTime chargingTime2 = (ChargingTime) codedInputStream.readMessage(ChargingTime.parser(), extensionRegistryLite);
                                this.currentChargingTime_ = chargingTime2;
                                if (builder7 != null) {
                                    builder7.mergeFrom(chargingTime2);
                                    this.currentChargingTime_ = builder7.buildPartial();
                                }
                            }
                        }
                        z2 = true;
                    } catch (InvalidProtocolBufferException e2) {
                        throw e2.setUnfinishedMessage(this);
                    } catch (IOException e3) {
                        throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    if (((i2 == true ? 1 : 0) & 1) != 0) {
                        this.auxiliaryDrainAtTime_ = Collections.unmodifiableList(this.auxiliaryDrainAtTime_);
                    }
                    if (((i2 == true ? 1 : 0) & 2) != 0) {
                        this.auxiliaryDrainAtTemp_ = Collections.unmodifiableList(this.auxiliaryDrainAtTemp_);
                    }
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            if (((i2 == true ? 1 : 0) & 1) != 0) {
                this.auxiliaryDrainAtTime_ = Collections.unmodifiableList(this.auxiliaryDrainAtTime_);
            }
            if (((i2 == true ? 1 : 0) & 2) != 0) {
                this.auxiliaryDrainAtTemp_ = Collections.unmodifiableList(this.auxiliaryDrainAtTemp_);
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static VehicleEnergyModelData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (VehicleEnergyModelData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static VehicleEnergyModelData parseFrom(CodedInputStream codedInputStream) {
            return (VehicleEnergyModelData) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static VehicleEnergyModelData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (VehicleEnergyModelData) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface VehicleEnergyModelDataOrBuilder extends MessageOrBuilder {
        DrainAtTemperature getAuxiliaryDrainAtTemp(int i2);

        int getAuxiliaryDrainAtTempCount();

        List<DrainAtTemperature> getAuxiliaryDrainAtTempList();

        DrainAtTemperatureOrBuilder getAuxiliaryDrainAtTempOrBuilder(int i2);

        List<? extends DrainAtTemperatureOrBuilder> getAuxiliaryDrainAtTempOrBuilderList();

        DrainAtTime getAuxiliaryDrainAtTime(int i2);

        int getAuxiliaryDrainAtTimeCount();

        List<DrainAtTime> getAuxiliaryDrainAtTimeList();

        DrainAtTimeOrBuilder getAuxiliaryDrainAtTimeOrBuilder(int i2);

        List<? extends DrainAtTimeOrBuilder> getAuxiliaryDrainAtTimeOrBuilderList();

        BatteryLosses getBatteryLosses();

        BatteryLossesOrBuilder getBatteryLossesOrBuilder();

        ChargingCurves getChargingCurves();

        ChargingCurvesOrBuilder getChargingCurvesOrBuilder();

        ChargingTime getCurrentChargingTime();

        ChargingTimeOrBuilder getCurrentChargingTimeOrBuilder();

        DrivetrainLosses getDrivetrainLosses();

        DrivetrainLossesOrBuilder getDrivetrainLossesOrBuilder();

        MaxRegenPower getMaxRegenPower();

        MaxRegenPowerOrBuilder getMaxRegenPowerOrBuilder();

        RoadLoadForce getRoadLoad();

        RoadLoadForceOrBuilder getRoadLoadOrBuilder();

        VehicleInfo getVehicleInfo();

        VehicleInfoOrBuilder getVehicleInfoOrBuilder();

        boolean hasBatteryLosses();

        boolean hasChargingCurves();

        boolean hasCurrentChargingTime();

        boolean hasDrivetrainLosses();

        boolean hasMaxRegenPower();

        boolean hasRoadLoad();

        boolean hasVehicleInfo();
    }

    public static final class VehicleInfo extends GeneratedMessageV3 implements VehicleInfoOrBuilder {
        public static final int BATTERY_CAPACITY_WH_FIELD_NUMBER = 4;
        public static final int BATTERY_LEVEL_WH_FIELD_NUMBER = 3;
        public static final int EXTERNAL_TEMP_CELSIUS_FIELD_NUMBER = 7;
        public static final int HEAT_PUMP_EQUIPPED_FIELD_NUMBER = 10;
        public static final int HVAC_STATUS_FIELD_NUMBER = 5;
        public static final int MASS_KILOGRAMS_FIELD_NUMBER = 2;
        public static final int MAXIMUM_CHARGING_RATE_WATTS_FIELD_NUMBER = 9;
        public static final int PEAK_MOTOR_POWER_WATTS_FIELD_NUMBER = 8;
        public static final int REFERENCE_AIR_DENSITY_FIELD_NUMBER = 6;
        private static final long serialVersionUID = 0;
        private IntWithUncertainty batteryCapacityWh_;
        private IntWithUncertainty batteryLevelWh_;
        private int bitField0_;
        private float externalTempCelsius_;
        private boolean heatPumpEquipped_;
        private int hvacStatus_;
        private IntWithUncertainty massKilograms_;
        private int maximumChargingRateWatts_;
        private byte memoizedIsInitialized;
        private int peakMotorPowerWatts_;
        private float referenceAirDensity_;
        private static final VehicleInfo DEFAULT_INSTANCE = new VehicleInfo();
        private static final Parser<VehicleInfo> PARSER = new AbstractParser<VehicleInfo>() { // from class: com.google.android.projection.proto.EnergyModel.VehicleInfo.1
            @Override // com.google.protobuf.Parser
            public VehicleInfo parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
                return new VehicleInfo(codedInputStream, extensionRegistryLite);
            }
        };

        public enum HvacStatus implements ProtocolMessageEnum {
            UNKNOWN_HVAC_STATUS(0),
            OFF_HVAC_STATUS(1),
            ON_HVAC_STATUS(2),
            UNRECOGNIZED(-1);

            public static final int OFF_HVAC_STATUS_VALUE = 1;
            public static final int ON_HVAC_STATUS_VALUE = 2;
            public static final int UNKNOWN_HVAC_STATUS_VALUE = 0;
            private final int value;
            private static final Internal.EnumLiteMap<HvacStatus> internalValueMap = new Internal.EnumLiteMap<HvacStatus>() { // from class: com.google.android.projection.proto.EnergyModel.VehicleInfo.HvacStatus.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public HvacStatus findValueByNumber(int i2) {
                    return HvacStatus.forNumber(i2);
                }
            };
            private static final HvacStatus[] VALUES = values();

            HvacStatus(int i2) {
                this.value = i2;
            }

            public static HvacStatus forNumber(int i2) {
                if (i2 == 0) {
                    return UNKNOWN_HVAC_STATUS;
                }
                if (i2 == 1) {
                    return OFF_HVAC_STATUS;
                }
                if (i2 != 2) {
                    return null;
                }
                return ON_HVAC_STATUS;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return VehicleInfo.getDescriptor().getEnumTypes().get(0);
            }

            public static Internal.EnumLiteMap<HvacStatus> internalGetValueMap() {
                return internalValueMap;
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Override // com.google.protobuf.ProtocolMessageEnum
            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                if (this != UNRECOGNIZED) {
                    return getDescriptor().getValues().get(ordinal());
                }
                throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
            }

            @Deprecated
            public static HvacStatus valueOf(int i2) {
                return forNumber(i2);
            }

            public static HvacStatus valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    if (enumValueDescriptor.getIndex() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        public static VehicleInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return EnergyModel.internal_static_energy_model_VehicleInfo_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static VehicleInfo parseDelimitedFrom(InputStream inputStream) {
            return (VehicleInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static VehicleInfo parseFrom(ByteBuffer byteBuffer) {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Parser<VehicleInfo> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof VehicleInfo)) {
                return super.equals(obj);
            }
            VehicleInfo vehicleInfo = (VehicleInfo) obj;
            if (hasMassKilograms() != vehicleInfo.hasMassKilograms()) {
                return false;
            }
            if ((hasMassKilograms() && !getMassKilograms().equals(vehicleInfo.getMassKilograms())) || hasBatteryLevelWh() != vehicleInfo.hasBatteryLevelWh()) {
                return false;
            }
            if ((hasBatteryLevelWh() && !getBatteryLevelWh().equals(vehicleInfo.getBatteryLevelWh())) || hasBatteryCapacityWh() != vehicleInfo.hasBatteryCapacityWh()) {
                return false;
            }
            if ((hasBatteryCapacityWh() && !getBatteryCapacityWh().equals(vehicleInfo.getBatteryCapacityWh())) || this.hvacStatus_ != vehicleInfo.hvacStatus_ || Float.floatToIntBits(getReferenceAirDensity()) != Float.floatToIntBits(vehicleInfo.getReferenceAirDensity()) || Float.floatToIntBits(getExternalTempCelsius()) != Float.floatToIntBits(vehicleInfo.getExternalTempCelsius()) || hasPeakMotorPowerWatts() != vehicleInfo.hasPeakMotorPowerWatts()) {
                return false;
            }
            if ((hasPeakMotorPowerWatts() && getPeakMotorPowerWatts() != vehicleInfo.getPeakMotorPowerWatts()) || hasMaximumChargingRateWatts() != vehicleInfo.hasMaximumChargingRateWatts()) {
                return false;
            }
            if ((!hasMaximumChargingRateWatts() || getMaximumChargingRateWatts() == vehicleInfo.getMaximumChargingRateWatts()) && hasHeatPumpEquipped() == vehicleInfo.hasHeatPumpEquipped()) {
                return (!hasHeatPumpEquipped() || getHeatPumpEquipped() == vehicleInfo.getHeatPumpEquipped()) && this.unknownFields.equals(vehicleInfo.unknownFields);
            }
            return false;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
        public IntWithUncertainty getBatteryCapacityWh() {
            IntWithUncertainty intWithUncertainty = this.batteryCapacityWh_;
            return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
        public IntWithUncertaintyOrBuilder getBatteryCapacityWhOrBuilder() {
            return getBatteryCapacityWh();
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
        public IntWithUncertainty getBatteryLevelWh() {
            IntWithUncertainty intWithUncertainty = this.batteryLevelWh_;
            return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
        public IntWithUncertaintyOrBuilder getBatteryLevelWhOrBuilder() {
            return getBatteryLevelWh();
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
        public float getExternalTempCelsius() {
            return this.externalTempCelsius_;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
        public boolean getHeatPumpEquipped() {
            return this.heatPumpEquipped_;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
        public HvacStatus getHvacStatus() {
            HvacStatus hvacStatusValueOf = HvacStatus.valueOf(this.hvacStatus_);
            return hvacStatusValueOf == null ? HvacStatus.UNRECOGNIZED : hvacStatusValueOf;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
        public int getHvacStatusValue() {
            return this.hvacStatus_;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
        public IntWithUncertainty getMassKilograms() {
            IntWithUncertainty intWithUncertainty = this.massKilograms_;
            return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
        public IntWithUncertaintyOrBuilder getMassKilogramsOrBuilder() {
            return getMassKilograms();
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
        public int getMaximumChargingRateWatts() {
            return this.maximumChargingRateWatts_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Parser<VehicleInfo> getParserForType() {
            return PARSER;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
        public int getPeakMotorPowerWatts() {
            return this.peakMotorPowerWatts_;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
        public float getReferenceAirDensity() {
            return this.referenceAirDensity_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public int getSerializedSize() {
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int iComputeMessageSize = this.massKilograms_ != null ? 0 + CodedOutputStream.computeMessageSize(2, getMassKilograms()) : 0;
            if (this.batteryLevelWh_ != null) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(3, getBatteryLevelWh());
            }
            if (this.batteryCapacityWh_ != null) {
                iComputeMessageSize += CodedOutputStream.computeMessageSize(4, getBatteryCapacityWh());
            }
            if (this.hvacStatus_ != HvacStatus.UNKNOWN_HVAC_STATUS.getNumber()) {
                iComputeMessageSize += CodedOutputStream.computeEnumSize(5, this.hvacStatus_);
            }
            float f2 = this.referenceAirDensity_;
            if (f2 != 0.0f) {
                iComputeMessageSize += CodedOutputStream.computeFloatSize(6, f2);
            }
            float f3 = this.externalTempCelsius_;
            if (f3 != 0.0f) {
                iComputeMessageSize += CodedOutputStream.computeFloatSize(7, f3);
            }
            if ((this.bitField0_ & 1) != 0) {
                iComputeMessageSize += CodedOutputStream.computeUInt32Size(8, this.peakMotorPowerWatts_);
            }
            if ((this.bitField0_ & 2) != 0) {
                iComputeMessageSize += CodedOutputStream.computeUInt32Size(9, this.maximumChargingRateWatts_);
            }
            if ((this.bitField0_ & 4) != 0) {
                iComputeMessageSize += CodedOutputStream.computeBoolSize(10, this.heatPumpEquipped_);
            }
            int serializedSize = this.unknownFields.getSerializedSize() + iComputeMessageSize;
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
        public boolean hasBatteryCapacityWh() {
            return this.batteryCapacityWh_ != null;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
        public boolean hasBatteryLevelWh() {
            return this.batteryLevelWh_ != null;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
        public boolean hasHeatPumpEquipped() {
            return (this.bitField0_ & 4) != 0;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
        public boolean hasMassKilograms() {
            return this.massKilograms_ != null;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
        public boolean hasMaximumChargingRateWatts() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
        public boolean hasPeakMotorPowerWatts() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.Message
        public int hashCode() {
            int i2 = this.memoizedHashCode;
            if (i2 != 0) {
                return i2;
            }
            int iHashCode = getDescriptor().hashCode() + MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_PREMIUM_SMS_DENY;
            if (hasMassKilograms()) {
                iHashCode = m.D(iHashCode, 37, 2, 53) + getMassKilograms().hashCode();
            }
            if (hasBatteryLevelWh()) {
                iHashCode = m.D(iHashCode, 37, 3, 53) + getBatteryLevelWh().hashCode();
            }
            if (hasBatteryCapacityWh()) {
                iHashCode = m.D(iHashCode, 37, 4, 53) + getBatteryCapacityWh().hashCode();
            }
            int iFloatToIntBits = Float.floatToIntBits(getExternalTempCelsius()) + ((((Float.floatToIntBits(getReferenceAirDensity()) + ((((m.D(iHashCode, 37, 5, 53) + this.hvacStatus_) * 37) + 6) * 53)) * 37) + 7) * 53);
            if (hasPeakMotorPowerWatts()) {
                iFloatToIntBits = m.D(iFloatToIntBits, 37, 8, 53) + getPeakMotorPowerWatts();
            }
            if (hasMaximumChargingRateWatts()) {
                iFloatToIntBits = m.D(iFloatToIntBits, 37, 9, 53) + getMaximumChargingRateWatts();
            }
            if (hasHeatPumpEquipped()) {
                iFloatToIntBits = m.D(iFloatToIntBits, 37, 10, 53) + Internal.hashBoolean(getHeatPumpEquipped());
            }
            int iHashCode2 = this.unknownFields.hashCode() + (iFloatToIntBits * 29);
            this.memoizedHashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return EnergyModel.internal_static_energy_model_VehicleInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(VehicleInfo.class, Builder.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new VehicleInfo();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) {
            if (this.massKilograms_ != null) {
                codedOutputStream.writeMessage(2, getMassKilograms());
            }
            if (this.batteryLevelWh_ != null) {
                codedOutputStream.writeMessage(3, getBatteryLevelWh());
            }
            if (this.batteryCapacityWh_ != null) {
                codedOutputStream.writeMessage(4, getBatteryCapacityWh());
            }
            if (this.hvacStatus_ != HvacStatus.UNKNOWN_HVAC_STATUS.getNumber()) {
                codedOutputStream.writeEnum(5, this.hvacStatus_);
            }
            float f2 = this.referenceAirDensity_;
            if (f2 != 0.0f) {
                codedOutputStream.writeFloat(6, f2);
            }
            float f3 = this.externalTempCelsius_;
            if (f3 != 0.0f) {
                codedOutputStream.writeFloat(7, f3);
            }
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.writeUInt32(8, this.peakMotorPowerWatts_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.writeUInt32(9, this.maximumChargingRateWatts_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.writeBool(10, this.heatPumpEquipped_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements VehicleInfoOrBuilder {
            private SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> batteryCapacityWhBuilder_;
            private IntWithUncertainty batteryCapacityWh_;
            private SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> batteryLevelWhBuilder_;
            private IntWithUncertainty batteryLevelWh_;
            private int bitField0_;
            private float externalTempCelsius_;
            private boolean heatPumpEquipped_;
            private int hvacStatus_;
            private SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> massKilogramsBuilder_;
            private IntWithUncertainty massKilograms_;
            private int maximumChargingRateWatts_;
            private int peakMotorPowerWatts_;
            private float referenceAirDensity_;

            private SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> getBatteryCapacityWhFieldBuilder() {
                if (this.batteryCapacityWhBuilder_ == null) {
                    this.batteryCapacityWhBuilder_ = new SingleFieldBuilderV3<>(getBatteryCapacityWh(), getParentForChildren(), isClean());
                    this.batteryCapacityWh_ = null;
                }
                return this.batteryCapacityWhBuilder_;
            }

            private SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> getBatteryLevelWhFieldBuilder() {
                if (this.batteryLevelWhBuilder_ == null) {
                    this.batteryLevelWhBuilder_ = new SingleFieldBuilderV3<>(getBatteryLevelWh(), getParentForChildren(), isClean());
                    this.batteryLevelWh_ = null;
                }
                return this.batteryLevelWhBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return EnergyModel.internal_static_energy_model_VehicleInfo_descriptor;
            }

            private SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> getMassKilogramsFieldBuilder() {
                if (this.massKilogramsBuilder_ == null) {
                    this.massKilogramsBuilder_ = new SingleFieldBuilderV3<>(getMassKilograms(), getParentForChildren(), isClean());
                    this.massKilograms_ = null;
                }
                return this.massKilogramsBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearBatteryCapacityWh() {
                if (this.batteryCapacityWhBuilder_ == null) {
                    this.batteryCapacityWh_ = null;
                    onChanged();
                } else {
                    this.batteryCapacityWh_ = null;
                    this.batteryCapacityWhBuilder_ = null;
                }
                return this;
            }

            public Builder clearBatteryLevelWh() {
                if (this.batteryLevelWhBuilder_ == null) {
                    this.batteryLevelWh_ = null;
                    onChanged();
                } else {
                    this.batteryLevelWh_ = null;
                    this.batteryLevelWhBuilder_ = null;
                }
                return this;
            }

            public Builder clearExternalTempCelsius() {
                this.externalTempCelsius_ = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearHeatPumpEquipped() {
                this.bitField0_ &= -5;
                this.heatPumpEquipped_ = false;
                onChanged();
                return this;
            }

            public Builder clearHvacStatus() {
                this.hvacStatus_ = 0;
                onChanged();
                return this;
            }

            public Builder clearMassKilograms() {
                if (this.massKilogramsBuilder_ == null) {
                    this.massKilograms_ = null;
                    onChanged();
                } else {
                    this.massKilograms_ = null;
                    this.massKilogramsBuilder_ = null;
                }
                return this;
            }

            public Builder clearMaximumChargingRateWatts() {
                this.bitField0_ &= -3;
                this.maximumChargingRateWatts_ = 0;
                onChanged();
                return this;
            }

            public Builder clearPeakMotorPowerWatts() {
                this.bitField0_ &= -2;
                this.peakMotorPowerWatts_ = 0;
                onChanged();
                return this;
            }

            public Builder clearReferenceAirDensity() {
                this.referenceAirDensity_ = 0.0f;
                onChanged();
                return this;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
            public IntWithUncertainty getBatteryCapacityWh() {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.batteryCapacityWhBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (IntWithUncertainty) singleFieldBuilderV3.getMessage();
                }
                IntWithUncertainty intWithUncertainty = this.batteryCapacityWh_;
                return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
            }

            public IntWithUncertainty.Builder getBatteryCapacityWhBuilder() {
                onChanged();
                return (IntWithUncertainty.Builder) getBatteryCapacityWhFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
            public IntWithUncertaintyOrBuilder getBatteryCapacityWhOrBuilder() {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.batteryCapacityWhBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (IntWithUncertaintyOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                IntWithUncertainty intWithUncertainty = this.batteryCapacityWh_;
                return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
            public IntWithUncertainty getBatteryLevelWh() {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.batteryLevelWhBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (IntWithUncertainty) singleFieldBuilderV3.getMessage();
                }
                IntWithUncertainty intWithUncertainty = this.batteryLevelWh_;
                return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
            }

            public IntWithUncertainty.Builder getBatteryLevelWhBuilder() {
                onChanged();
                return (IntWithUncertainty.Builder) getBatteryLevelWhFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
            public IntWithUncertaintyOrBuilder getBatteryLevelWhOrBuilder() {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.batteryLevelWhBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (IntWithUncertaintyOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                IntWithUncertainty intWithUncertainty = this.batteryLevelWh_;
                return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder, com.google.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return EnergyModel.internal_static_energy_model_VehicleInfo_descriptor;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
            public float getExternalTempCelsius() {
                return this.externalTempCelsius_;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
            public boolean getHeatPumpEquipped() {
                return this.heatPumpEquipped_;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
            public HvacStatus getHvacStatus() {
                HvacStatus hvacStatusValueOf = HvacStatus.valueOf(this.hvacStatus_);
                return hvacStatusValueOf == null ? HvacStatus.UNRECOGNIZED : hvacStatusValueOf;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
            public int getHvacStatusValue() {
                return this.hvacStatus_;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
            public IntWithUncertainty getMassKilograms() {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.massKilogramsBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (IntWithUncertainty) singleFieldBuilderV3.getMessage();
                }
                IntWithUncertainty intWithUncertainty = this.massKilograms_;
                return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
            }

            public IntWithUncertainty.Builder getMassKilogramsBuilder() {
                onChanged();
                return (IntWithUncertainty.Builder) getMassKilogramsFieldBuilder().getBuilder();
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
            public IntWithUncertaintyOrBuilder getMassKilogramsOrBuilder() {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.massKilogramsBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return (IntWithUncertaintyOrBuilder) singleFieldBuilderV3.getMessageOrBuilder();
                }
                IntWithUncertainty intWithUncertainty = this.massKilograms_;
                return intWithUncertainty == null ? IntWithUncertainty.getDefaultInstance() : intWithUncertainty;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
            public int getMaximumChargingRateWatts() {
                return this.maximumChargingRateWatts_;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
            public int getPeakMotorPowerWatts() {
                return this.peakMotorPowerWatts_;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
            public float getReferenceAirDensity() {
                return this.referenceAirDensity_;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
            public boolean hasBatteryCapacityWh() {
                return (this.batteryCapacityWhBuilder_ == null && this.batteryCapacityWh_ == null) ? false : true;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
            public boolean hasBatteryLevelWh() {
                return (this.batteryLevelWhBuilder_ == null && this.batteryLevelWh_ == null) ? false : true;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
            public boolean hasHeatPumpEquipped() {
                return (this.bitField0_ & 4) != 0;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
            public boolean hasMassKilograms() {
                return (this.massKilogramsBuilder_ == null && this.massKilograms_ == null) ? false : true;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
            public boolean hasMaximumChargingRateWatts() {
                return (this.bitField0_ & 2) != 0;
            }

            @Override // com.google.android.projection.proto.EnergyModel.VehicleInfoOrBuilder
            public boolean hasPeakMotorPowerWatts() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder
            public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return EnergyModel.internal_static_energy_model_VehicleInfo_fieldAccessorTable.ensureFieldAccessorsInitialized(VehicleInfo.class, Builder.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeBatteryCapacityWh(IntWithUncertainty intWithUncertainty) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.batteryCapacityWhBuilder_;
                if (singleFieldBuilderV3 == null) {
                    IntWithUncertainty intWithUncertainty2 = this.batteryCapacityWh_;
                    if (intWithUncertainty2 != null) {
                        this.batteryCapacityWh_ = IntWithUncertainty.newBuilder(intWithUncertainty2).mergeFrom(intWithUncertainty).buildPartial();
                    } else {
                        this.batteryCapacityWh_ = intWithUncertainty;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(intWithUncertainty);
                }
                return this;
            }

            public Builder mergeBatteryLevelWh(IntWithUncertainty intWithUncertainty) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.batteryLevelWhBuilder_;
                if (singleFieldBuilderV3 == null) {
                    IntWithUncertainty intWithUncertainty2 = this.batteryLevelWh_;
                    if (intWithUncertainty2 != null) {
                        this.batteryLevelWh_ = IntWithUncertainty.newBuilder(intWithUncertainty2).mergeFrom(intWithUncertainty).buildPartial();
                    } else {
                        this.batteryLevelWh_ = intWithUncertainty;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(intWithUncertainty);
                }
                return this;
            }

            public Builder mergeMassKilograms(IntWithUncertainty intWithUncertainty) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.massKilogramsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    IntWithUncertainty intWithUncertainty2 = this.massKilograms_;
                    if (intWithUncertainty2 != null) {
                        this.massKilograms_ = IntWithUncertainty.newBuilder(intWithUncertainty2).mergeFrom(intWithUncertainty).buildPartial();
                    } else {
                        this.massKilograms_ = intWithUncertainty;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(intWithUncertainty);
                }
                return this;
            }

            public Builder setBatteryCapacityWh(IntWithUncertainty intWithUncertainty) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.batteryCapacityWhBuilder_;
                if (singleFieldBuilderV3 == null) {
                    intWithUncertainty.getClass();
                    this.batteryCapacityWh_ = intWithUncertainty;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(intWithUncertainty);
                }
                return this;
            }

            public Builder setBatteryLevelWh(IntWithUncertainty intWithUncertainty) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.batteryLevelWhBuilder_;
                if (singleFieldBuilderV3 == null) {
                    intWithUncertainty.getClass();
                    this.batteryLevelWh_ = intWithUncertainty;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(intWithUncertainty);
                }
                return this;
            }

            public Builder setExternalTempCelsius(float f2) {
                this.externalTempCelsius_ = f2;
                onChanged();
                return this;
            }

            public Builder setHeatPumpEquipped(boolean z2) {
                this.bitField0_ |= 4;
                this.heatPumpEquipped_ = z2;
                onChanged();
                return this;
            }

            public Builder setHvacStatus(HvacStatus hvacStatus) {
                hvacStatus.getClass();
                this.hvacStatus_ = hvacStatus.getNumber();
                onChanged();
                return this;
            }

            public Builder setHvacStatusValue(int i2) {
                this.hvacStatus_ = i2;
                onChanged();
                return this;
            }

            public Builder setMassKilograms(IntWithUncertainty intWithUncertainty) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.massKilogramsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    intWithUncertainty.getClass();
                    this.massKilograms_ = intWithUncertainty;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(intWithUncertainty);
                }
                return this;
            }

            public Builder setMaximumChargingRateWatts(int i2) {
                this.bitField0_ |= 2;
                this.maximumChargingRateWatts_ = i2;
                onChanged();
                return this;
            }

            public Builder setPeakMotorPowerWatts(int i2) {
                this.bitField0_ |= 1;
                this.peakMotorPowerWatts_ = i2;
                onChanged();
                return this;
            }

            public Builder setReferenceAirDensity(float f2) {
                this.referenceAirDensity_ = f2;
                onChanged();
                return this;
            }

            private Builder() {
                this.hvacStatus_ = 0;
                maybeForceBuilderInitialization();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public VehicleInfo build() {
                VehicleInfo vehicleInfoBuildPartial = buildPartial();
                if (vehicleInfoBuildPartial.isInitialized()) {
                    return vehicleInfoBuildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) vehicleInfoBuildPartial);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public VehicleInfo buildPartial() {
                int i2;
                VehicleInfo vehicleInfo = new VehicleInfo(this);
                int i3 = this.bitField0_;
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.massKilogramsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    vehicleInfo.massKilograms_ = this.massKilograms_;
                } else {
                    vehicleInfo.massKilograms_ = (IntWithUncertainty) singleFieldBuilderV3.build();
                }
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV4 = this.batteryLevelWhBuilder_;
                if (singleFieldBuilderV4 == null) {
                    vehicleInfo.batteryLevelWh_ = this.batteryLevelWh_;
                } else {
                    vehicleInfo.batteryLevelWh_ = (IntWithUncertainty) singleFieldBuilderV4.build();
                }
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV5 = this.batteryCapacityWhBuilder_;
                if (singleFieldBuilderV5 == null) {
                    vehicleInfo.batteryCapacityWh_ = this.batteryCapacityWh_;
                } else {
                    vehicleInfo.batteryCapacityWh_ = (IntWithUncertainty) singleFieldBuilderV5.build();
                }
                vehicleInfo.hvacStatus_ = this.hvacStatus_;
                vehicleInfo.referenceAirDensity_ = this.referenceAirDensity_;
                vehicleInfo.externalTempCelsius_ = this.externalTempCelsius_;
                if ((i3 & 1) != 0) {
                    vehicleInfo.peakMotorPowerWatts_ = this.peakMotorPowerWatts_;
                    i2 = 1;
                } else {
                    i2 = 0;
                }
                if ((i3 & 2) != 0) {
                    vehicleInfo.maximumChargingRateWatts_ = this.maximumChargingRateWatts_;
                    i2 |= 2;
                }
                if ((i3 & 4) != 0) {
                    vehicleInfo.heatPumpEquipped_ = this.heatPumpEquipped_;
                    i2 |= 4;
                }
                vehicleInfo.bitField0_ = i2;
                onBuilt();
                return vehicleInfo;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
            public VehicleInfo getDefaultInstanceForType() {
                return VehicleInfo.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i2, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i2, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                if (this.massKilogramsBuilder_ == null) {
                    this.massKilograms_ = null;
                } else {
                    this.massKilograms_ = null;
                    this.massKilogramsBuilder_ = null;
                }
                if (this.batteryLevelWhBuilder_ == null) {
                    this.batteryLevelWh_ = null;
                } else {
                    this.batteryLevelWh_ = null;
                    this.batteryLevelWhBuilder_ = null;
                }
                if (this.batteryCapacityWhBuilder_ == null) {
                    this.batteryCapacityWh_ = null;
                } else {
                    this.batteryCapacityWh_ = null;
                    this.batteryCapacityWhBuilder_ = null;
                }
                this.hvacStatus_ = 0;
                this.referenceAirDensity_ = 0.0f;
                this.externalTempCelsius_ = 0.0f;
                this.peakMotorPowerWatts_ = 0;
                int i2 = this.bitField0_ & (-2);
                this.maximumChargingRateWatts_ = 0;
                this.heatPumpEquipped_ = false;
                this.bitField0_ = i2 & (-3) & (-5);
                return this;
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.hvacStatus_ = 0;
                maybeForceBuilderInitialization();
            }

            public Builder setBatteryCapacityWh(IntWithUncertainty.Builder builder) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.batteryCapacityWhBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.batteryCapacityWh_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder setBatteryLevelWh(IntWithUncertainty.Builder builder) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.batteryLevelWhBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.batteryLevelWh_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public Builder setMassKilograms(IntWithUncertainty.Builder builder) {
                SingleFieldBuilderV3<IntWithUncertainty, IntWithUncertainty.Builder, IntWithUncertaintyOrBuilder> singleFieldBuilderV3 = this.massKilogramsBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.massKilograms_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.Builder, com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder
            /* JADX INFO: renamed from: clone */
            public Builder mo58clone() {
                return (Builder) super.mo58clone();
            }

            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof VehicleInfo) {
                    return mergeFrom((VehicleInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(VehicleInfo vehicleInfo) {
                if (vehicleInfo == VehicleInfo.getDefaultInstance()) {
                    return this;
                }
                if (vehicleInfo.hasMassKilograms()) {
                    mergeMassKilograms(vehicleInfo.getMassKilograms());
                }
                if (vehicleInfo.hasBatteryLevelWh()) {
                    mergeBatteryLevelWh(vehicleInfo.getBatteryLevelWh());
                }
                if (vehicleInfo.hasBatteryCapacityWh()) {
                    mergeBatteryCapacityWh(vehicleInfo.getBatteryCapacityWh());
                }
                if (vehicleInfo.hvacStatus_ != 0) {
                    setHvacStatusValue(vehicleInfo.getHvacStatusValue());
                }
                if (vehicleInfo.getReferenceAirDensity() != 0.0f) {
                    setReferenceAirDensity(vehicleInfo.getReferenceAirDensity());
                }
                if (vehicleInfo.getExternalTempCelsius() != 0.0f) {
                    setExternalTempCelsius(vehicleInfo.getExternalTempCelsius());
                }
                if (vehicleInfo.hasPeakMotorPowerWatts()) {
                    setPeakMotorPowerWatts(vehicleInfo.getPeakMotorPowerWatts());
                }
                if (vehicleInfo.hasMaximumChargingRateWatts()) {
                    setMaximumChargingRateWatts(vehicleInfo.getMaximumChargingRateWatts());
                }
                if (vehicleInfo.hasHeatPumpEquipped()) {
                    setHeatPumpEquipped(vehicleInfo.getHeatPumpEquipped());
                }
                mergeUnknownFields(((GeneratedMessageV3) vehicleInfo).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:16:0x0023  */
            @Override // com.google.protobuf.AbstractMessage.Builder, com.google.protobuf.AbstractMessageLite.Builder, com.google.protobuf.MessageLite.Builder, com.google.protobuf.Message.Builder
            public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
                VehicleInfo vehicleInfo = null;
                try {
                    try {
                        VehicleInfo vehicleInfo2 = (VehicleInfo) VehicleInfo.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                        if (vehicleInfo2 != null) {
                            mergeFrom(vehicleInfo2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e2) {
                        VehicleInfo vehicleInfo3 = (VehicleInfo) e2.getUnfinishedMessage();
                        try {
                            throw e2.unwrapIOException();
                        } catch (Throwable th) {
                            th = th;
                            vehicleInfo = vehicleInfo3;
                            if (vehicleInfo != null) {
                                mergeFrom(vehicleInfo);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (vehicleInfo != null) {
                        mergeFrom(vehicleInfo);
                    }
                    throw th;
                }
            }
        }

        public static Builder newBuilder(VehicleInfo vehicleInfo) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(vehicleInfo);
        }

        public static VehicleInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        private VehicleInfo(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static VehicleInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (VehicleInfo) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static VehicleInfo parseFrom(ByteString byteString) {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLiteOrBuilder, com.google.protobuf.MessageOrBuilder
        public VehicleInfo getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static VehicleInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        @Override // com.google.protobuf.AbstractMessage, com.google.protobuf.MessageLite, com.google.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private VehicleInfo() {
            this.memoizedIsInitialized = (byte) -1;
            this.hvacStatus_ = 0;
        }

        public static VehicleInfo parseFrom(byte[] bArr) {
            return PARSER.parseFrom(bArr);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        public static VehicleInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static VehicleInfo parseFrom(InputStream inputStream) {
            return (VehicleInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private VehicleInfo(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            IntWithUncertainty.Builder builder;
            this();
            extensionRegistryLite.getClass();
            UnknownFieldSet.Builder builderNewBuilder = UnknownFieldSet.newBuilder();
            boolean z2 = false;
            while (!z2) {
                try {
                    try {
                        try {
                            int tag = codedInputStream.readTag();
                            if (tag != 0) {
                                if (tag == 18) {
                                    IntWithUncertainty intWithUncertainty = this.massKilograms_;
                                    builder = intWithUncertainty != null ? intWithUncertainty.toBuilder() : null;
                                    IntWithUncertainty intWithUncertainty2 = (IntWithUncertainty) codedInputStream.readMessage(IntWithUncertainty.parser(), extensionRegistryLite);
                                    this.massKilograms_ = intWithUncertainty2;
                                    if (builder != null) {
                                        builder.mergeFrom(intWithUncertainty2);
                                        this.massKilograms_ = builder.buildPartial();
                                    }
                                } else if (tag == 26) {
                                    IntWithUncertainty intWithUncertainty3 = this.batteryLevelWh_;
                                    builder = intWithUncertainty3 != null ? intWithUncertainty3.toBuilder() : null;
                                    IntWithUncertainty intWithUncertainty4 = (IntWithUncertainty) codedInputStream.readMessage(IntWithUncertainty.parser(), extensionRegistryLite);
                                    this.batteryLevelWh_ = intWithUncertainty4;
                                    if (builder != null) {
                                        builder.mergeFrom(intWithUncertainty4);
                                        this.batteryLevelWh_ = builder.buildPartial();
                                    }
                                } else if (tag == 34) {
                                    IntWithUncertainty intWithUncertainty5 = this.batteryCapacityWh_;
                                    builder = intWithUncertainty5 != null ? intWithUncertainty5.toBuilder() : null;
                                    IntWithUncertainty intWithUncertainty6 = (IntWithUncertainty) codedInputStream.readMessage(IntWithUncertainty.parser(), extensionRegistryLite);
                                    this.batteryCapacityWh_ = intWithUncertainty6;
                                    if (builder != null) {
                                        builder.mergeFrom(intWithUncertainty6);
                                        this.batteryCapacityWh_ = builder.buildPartial();
                                    }
                                } else if (tag == 40) {
                                    this.hvacStatus_ = codedInputStream.readEnum();
                                } else if (tag == 53) {
                                    this.referenceAirDensity_ = codedInputStream.readFloat();
                                } else if (tag == 61) {
                                    this.externalTempCelsius_ = codedInputStream.readFloat();
                                } else if (tag == 64) {
                                    this.bitField0_ |= 1;
                                    this.peakMotorPowerWatts_ = codedInputStream.readUInt32();
                                } else if (tag == 72) {
                                    this.bitField0_ |= 2;
                                    this.maximumChargingRateWatts_ = codedInputStream.readUInt32();
                                } else if (tag != 80) {
                                    if (!parseUnknownField(codedInputStream, builderNewBuilder, extensionRegistryLite, tag)) {
                                    }
                                } else {
                                    this.bitField0_ |= 4;
                                    this.heatPumpEquipped_ = codedInputStream.readBool();
                                }
                            }
                            z2 = true;
                        } catch (IOException e2) {
                            throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e3) {
                        throw e3.setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    this.unknownFields = builderNewBuilder.build();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            this.unknownFields = builderNewBuilder.build();
            makeExtensionsImmutable();
        }

        public static VehicleInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (VehicleInfo) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static VehicleInfo parseFrom(CodedInputStream codedInputStream) {
            return (VehicleInfo) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static VehicleInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (VehicleInfo) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }
    }

    public interface VehicleInfoOrBuilder extends MessageOrBuilder {
        IntWithUncertainty getBatteryCapacityWh();

        IntWithUncertaintyOrBuilder getBatteryCapacityWhOrBuilder();

        IntWithUncertainty getBatteryLevelWh();

        IntWithUncertaintyOrBuilder getBatteryLevelWhOrBuilder();

        float getExternalTempCelsius();

        boolean getHeatPumpEquipped();

        VehicleInfo.HvacStatus getHvacStatus();

        int getHvacStatusValue();

        IntWithUncertainty getMassKilograms();

        IntWithUncertaintyOrBuilder getMassKilogramsOrBuilder();

        int getMaximumChargingRateWatts();

        int getPeakMotorPowerWatts();

        float getReferenceAirDensity();

        boolean hasBatteryCapacityWh();

        boolean hasBatteryLevelWh();

        boolean hasHeatPumpEquipped();

        boolean hasMassKilograms();

        boolean hasMaximumChargingRateWatts();

        boolean hasPeakMotorPowerWatts();
    }

    static {
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_energy_model_VehicleEnergyModelData_descriptor = descriptor2;
        internal_static_energy_model_VehicleEnergyModelData_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"VehicleInfo", "RoadLoad", "DrivetrainLosses", "MaxRegenPower", "BatteryLosses", "AuxiliaryDrainAtTime", "AuxiliaryDrainAtTemp", "ChargingCurves", "CurrentChargingTime"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_energy_model_IntWithUncertainty_descriptor = descriptor3;
        internal_static_energy_model_IntWithUncertainty_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"Mean", "StandardDeviation"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(2);
        internal_static_energy_model_FloatWithUncertainty_descriptor = descriptor4;
        internal_static_energy_model_FloatWithUncertainty_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor4, new String[]{"Mean", "StandardDeviation"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(3);
        internal_static_energy_model_VehicleInfo_descriptor = descriptor5;
        internal_static_energy_model_VehicleInfo_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor5, new String[]{"MassKilograms", "BatteryLevelWh", "BatteryCapacityWh", "HvacStatus", "ReferenceAirDensity", "ExternalTempCelsius", "PeakMotorPowerWatts", "MaximumChargingRateWatts", "HeatPumpEquipped", "PeakMotorPowerWatts", "MaximumChargingRateWatts", "HeatPumpEquipped"});
        Descriptors.Descriptor descriptor6 = getDescriptor().getMessageTypes().get(4);
        internal_static_energy_model_RoadLoadForce_descriptor = descriptor6;
        internal_static_energy_model_RoadLoadForce_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor6, new String[]{"Constant", "Linear", "Quadratic"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(5);
        internal_static_energy_model_MaxRegenPower_descriptor = descriptor7;
        internal_static_energy_model_MaxRegenPower_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor7, new String[]{"RegenerationRateAtEnergyLevel", "RegenerationRateAtTime"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(6);
        internal_static_energy_model_RegenerationRateAtEnergyLevel_descriptor = descriptor8;
        internal_static_energy_model_RegenerationRateAtEnergyLevel_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor8, new String[]{"EnergyLevelWh", "RegenerationRateWatts"});
        Descriptors.Descriptor descriptor9 = getDescriptor().getMessageTypes().get(7);
        internal_static_energy_model_RegenerationRateAtTime_descriptor = descriptor9;
        internal_static_energy_model_RegenerationRateAtTime_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor9, new String[]{"RelativeTimeSec", "RegenerationRateWatts"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(8);
        internal_static_energy_model_DrivetrainLosses_descriptor = descriptor10;
        internal_static_energy_model_DrivetrainLosses_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor10, new String[]{"DrivetrainPowerLoss"});
        Descriptors.Descriptor descriptor11 = getDescriptor().getMessageTypes().get(9);
        internal_static_energy_model_LossSeriesAtSpeed_descriptor = descriptor11;
        internal_static_energy_model_LossSeriesAtSpeed_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor11, new String[]{"SpeedMetersPerSecond", "LossAtPower"});
        Descriptors.Descriptor descriptor12 = getDescriptor().getMessageTypes().get(10);
        internal_static_energy_model_LossAtPower_descriptor = descriptor12;
        internal_static_energy_model_LossAtPower_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor12, new String[]{"PowerWatts", "LossWatts"});
        Descriptors.Descriptor descriptor13 = getDescriptor().getMessageTypes().get(11);
        internal_static_energy_model_BatteryLosses_descriptor = descriptor13;
        internal_static_energy_model_BatteryLosses_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor13, new String[]{"BatteryPowerLoss"});
        Descriptors.Descriptor descriptor14 = getDescriptor().getMessageTypes().get(12);
        internal_static_energy_model_DrainAtTime_descriptor = descriptor14;
        internal_static_energy_model_DrainAtTime_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor14, new String[]{"RelativeTimeSec", "DrainWatts"});
        Descriptors.Descriptor descriptor15 = getDescriptor().getMessageTypes().get(13);
        internal_static_energy_model_DrainAtTemperature_descriptor = descriptor15;
        internal_static_energy_model_DrainAtTemperature_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor15, new String[]{"TempCelsius", "HvacDrainWatts", "BatteryConditioningDrainWatts", "TotalDrainWatts"});
        Descriptors.Descriptor descriptor16 = getDescriptor().getMessageTypes().get(14);
        internal_static_energy_model_ChargingCurves_descriptor = descriptor16;
        internal_static_energy_model_ChargingCurves_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor16, new String[]{"ChargingCurveAtPower"});
        Descriptors.Descriptor descriptor17 = descriptor16.getNestedTypes().get(0);
        internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_descriptor = descriptor17;
        internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor17, new String[]{"InputPowerWatts", "TimeToFullBattery"});
        Descriptors.Descriptor descriptor18 = descriptor17.getNestedTypes().get(0);
        internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_TimeToFullBattery_descriptor = descriptor18;
        internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_TimeToFullBattery_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor18, new String[]{"EnergyToFullWh", "TimeToFullSecs"});
        Descriptors.Descriptor descriptor19 = getDescriptor().getMessageTypes().get(15);
        internal_static_energy_model_ChargingTime_descriptor = descriptor19;
        internal_static_energy_model_ChargingTime_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor19, new String[]{"TargetBatteryLevelWh", "TimeRemainingSecs"});
    }

    private EnergyModel() {
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }
}
